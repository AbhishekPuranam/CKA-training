rm -f /tmp/cfssl* && rm -rf /tmp/certs && mkdir -p /tmp/certs

curl -L https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 -o /tmp/cfssl
chmod +x /tmp/cfssl
sudo mv /tmp/cfssl /usr/local/bin/cfssl

curl -L https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64 -o /tmp/cfssljson
chmod +x /tmp/cfssljson
sudo mv /tmp/cfssljson /usr/local/bin/cfssljson

/usr/local/bin/cfssl version
/usr/local/bin/cfssljson -h

mkdir -p /tmp/certs


mkdir -p /tmp/certs

cat > /tmp/certs/etcd-root-ca-csr.json <<EOF
{
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "O": "etcd",
      "OU": "etcd Security",
      "L": "San Francisco",
      "ST": "California",
      "C": "USA"
    }
  ],
  "CN": "etcd-root-ca"
}
EOF
cfssl gencert --initca=true /tmp/certs/etcd-root-ca-csr.json | cfssljson --bare /tmp/certs/etcd-root-ca

# verify
openssl x509 -in /tmp/certs/etcd-root-ca.pem -text -noout


# cert-generation configuration
cat > /tmp/certs/etcd-gencert.json <<EOF
{
  "signing": {
    "default": {
        "usages": [
          "signing",
          "key encipherment",
          "server auth",
          "client auth"
        ],
        "expiry": "87600h"
    }
  }
}
EOF

cat > /tmp/certs/s1-ca-csr.json <<EOF
{
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "O": "etcd",
      "OU": "etcd Security",
      "L": "San Francisco",
      "ST": "California",
      "C": "USA"
    }
  ],
  "CN": "s1",
  "hosts": [
    "127.0.0.1",
    "localhost"
  ]
}
EOF
cfssl gencert \
  --ca /tmp/certs/etcd-root-ca.pem \
  --ca-key /tmp/certs/etcd-root-ca-key.pem \
  --config /tmp/certs/etcd-gencert.json \
  /tmp/certs/s1-ca-csr.json | cfssljson --bare /tmp/certs/s1

# verify
openssl x509 -in /tmp/certs/s1.pem -text -noout

mkdir -p ${HOME}/certs
cp /tmp/certs/* ${HOME}/certs


# after transferring certs to remote machines
mkdir -p ${HOME}/certs
cp /tmp/certs/* ${HOME}/certs



ETCD_VER=v3.3.8

# choose either URL
GOOGLE_URL=https://storage.googleapis.com/etcd
GITHUB_URL=https://github.com/coreos/etcd/releases/download
DOWNLOAD_URL=${GOOGLE_URL}

rm -f /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz
rm -rf /tmp/test-etcd && mkdir -p /tmp/test-etcd

curl -L ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-linux-amd64.tar.gz -o /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz
tar xzvf /tmp/etcd-${ETCD_VER}-linux-amd64.tar.gz -C /tmp/test-etcd --strip-components=1

# sudo cp /tmp/test-etcd/etcd* [YOUR_EXEC_DIR]
# sudo mkdir -p /usr/local/bin/ && sudo cp /tmp/test-etcd/etcd* /usr/local/bin/

/tmp/test-etcd/etcd --version
ETCDCTL_API=3 /tmp/test-etcd/etcdctl version



# make sure etcd process has write access to this directory
# remove this directory if the cluster is new; keep if restarting etcd
# rm -rf /tmp/etcd/s1


# to write service file for etcd
cat > /tmp/s1.service <<EOF
[Unit]
Description=etcd
Documentation=https://github.com/coreos/etcd
Conflicts=etcd.service
Conflicts=etcd2.service

[Service]
Type=notify
Restart=always
RestartSec=5s
LimitNOFILE=40000
TimeoutStartSec=0

ExecStart=/tmp/test-etcd/etcd --name s1 \
  --data-dir /tmp/etcd/s1 \
  --listen-client-urls https://localhost:2379 \
  --advertise-client-urls https://localhost:2379 \
  --listen-peer-urls https://localhost:2380 \
  --initial-advertise-peer-urls https://localhost:2380 \
  --initial-cluster s1=https://localhost:2380 \
  --initial-cluster-token tkn \
  --initial-cluster-state new \
  --client-cert-auth \
  --trusted-ca-file ${HOME}/certs/etcd-root-ca.pem \
  --cert-file ${HOME}/certs/s1.pem \
  --key-file ${HOME}/certs/s1-key.pem \
  --peer-client-cert-auth \
  --peer-trusted-ca-file ${HOME}/certs/etcd-root-ca.pem \
  --peer-cert-file ${HOME}/certs/s1.pem \
  --peer-key-file ${HOME}/certs/s1-key.pem

[Install]
WantedBy=multi-user.target

EOF
sudo mv /tmp/s1.service /etc/systemd/system/s1.service

# to start service
sudo systemctl daemon-reload
sudo systemctl enable s1.service
sudo systemctl start s1.service
apt  install etcd-client -y

ETCDCTL_API=3 /tmp/test-etcd/etcdctl \
  --endpoints localhost:2379 \
  --cacert ${HOME}/certs/etcd-root-ca.pem \
  --cert ${HOME}/certs/s1.pem \
  --key ${HOME}/certs/s1-key.pem \
  endpoint health

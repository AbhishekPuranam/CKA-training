### setup for service 
```sh
run : sh setup.sh

```
The script should output ``` localhost:2379 is healthy: successfully committed proposal: ``` at the end of script

### problem statement

Create a backup for etcd called ``` snapshot.db ``` and restore it. Below are the paths
- endpoints: localhost:2379
- cacert: ${HOME}/certs/etcd-root-ca.pem
- cert: ${HOME}/certs/s1.pem
- key: ${HOME}/certs/s1-key.pem

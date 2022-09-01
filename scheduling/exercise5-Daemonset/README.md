### Setup
```sh
run : kubectl apply -f setup.yaml
```
Question: Ensure a single instance of pod ```nginx``` is running on each node of the Kubernetes cluster where nginx also represents the Image name which has to be used. Do not override any taints currently in place. Create DaemonSet ```logbit``` in ```monitoring``` namespace.
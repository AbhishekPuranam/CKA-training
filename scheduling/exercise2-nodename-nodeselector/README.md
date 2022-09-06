### Setup
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statement

- Question1: Create a deployment ```crow``` in ``` birds ``` namespace with replicas as 2 and image as ```nginx ```. Ensure the  pod of deployment ``` crow ``` is deployed in ``` node2```. If you are killercoda, ensure the pods are deployed in ```controlplane```. 

- Question2: label the node  ``` node2 ``` as ``` bird=india ``` . Create a deployment ``` peacock ``` in ``` birds ``` namespace with image as ```nginx ``` and replicas=2. Ensure pods of deployment ``` peacock ``` is deployed in ``` node2 ``` . If you are killercoda, ensure the pods are deployed in ```controlplane```.

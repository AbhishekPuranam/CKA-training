### Setup
```sh
run : kubectl apply -f setup.yaml
```
### Problem Statement (if your using killercoda then taint Node1. Refresh the session for each question).

- Question1: Taint ```node2``` with key ```type``` and value  ```large``` .Ensure pods cannot be scheduled in future. Create a deployment ```large-app``` with two replicas in ``` cage ``` namespace and image is ``` nginx ```. Provide toleration for the deploying pod in the node. 

- Question2: Taint ```node3``` with key ```type``` and value  ```small``` . Ensure existing pods are evicted from the node.  Create a deployment ```small-app``` with two replicas in ``` cage ``` namespace and  image is ``` nginx ```. Provide toleration for the deploying pod in the node. 

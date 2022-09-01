### Setup
```sh
run : kubectl apply -f setup.yaml
```
### Problem Statement

- Question1: Taint ```node2``` with key ```type``` and value  ```large``` .Ensure pods cannot be scheduled in future. Create a deployment ```large-app``` with two replicas in ``` cage ``` namespace and provide toleration for the deploying pod in the node. 

- Question1: Taint ```node3``` with key ```type``` and value  ```small``` . Ensure existing pods are evicted from the node.  Create a deployment ```medium-app``` with two replicas in ``` cage ``` namespace and provide toleration for the deploying pod in the node. 
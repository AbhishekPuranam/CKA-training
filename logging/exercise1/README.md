## Check the pods with top process highest CPU and memory
#### install the Setup for the lab
```sh
run : kubectl apply -f setup.yaml
```
#### Problem Statement
In Namespace ``` webserver``` there are four pods running. Identify the pod which has highest ``` CPU ``` and save the pod name in ``` cpu.txt ```. Identify the pod which has highest ``` Memory ``` and save the pod name in ``` memory.txt ```. 
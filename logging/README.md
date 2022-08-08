### Setup for Metrics Server
```sh
run : kubectl apply -f components.yaml
```
### Patch the metrics server for killercoda
```sh
run : kubectl patch deployments -n kube-system metrics-server -p '{"spec": {"template": {"spec": {"nodeSelector": {"kubernetes.io/hostname": "k8s-master"}}}}}'
```
### check if the Deployment is ready
```sh
run: kubectl -n kube-system get deployment metrics-server
```
the output should show 
| NAME | READY|UP-TO-DATE | AVAILABLE 
| ------ | ------ | ------ | ------ |
metrics-server |   1/1  | 1 | 1       

### Validate metrics server has no error
```sh
run: kubectl top pods
run: kubectl top nodes
```
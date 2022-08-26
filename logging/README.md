### Study Materials
 - Check Kubernetes Pod and CPU: https://www.youtube.com/watch?v=i69Ss6TEGzs
 - Kubernetes Probes: https://www.youtube.com/watch?v=mxEvAPQRwhw

### K8s Reference links

- Check CPU and Memory: https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#top
-  Probes: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/


## LAB

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
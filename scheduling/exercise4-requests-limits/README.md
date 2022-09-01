### Setup
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statement

- Question1: In namespace ```chip``` create a deployment ```smallapp```  with single replica and image as nginx.  Set the requests ```memory: 100Mi,cpu: 500m ``` and limits ``` memory: 300Mi and cpu: 900m ```.

- Question1: In namespace ```chip``` create a pod ```smallpod```  with image as busybox. Ensure the pod is running. Set the requests ```memory: 200Mi,cpu: 400m ``` and limits ``` memory: 400Mi and cpu: 800m ```.
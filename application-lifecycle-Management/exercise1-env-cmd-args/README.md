### Setup 
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements

- Question1: Create a pod ``` envtest ``` in ``` leaders ``` namespace with environment variables ``` us=biden ```, ``` india=modi ``` , ``` russia=putin ``` . use image as ``` nginx ```.

- question2: create a pod ```cmdarg ``` in ``` leaders ``` namespace with image as ``` nginx ```. Ensure the pod is running and echo ```namasthe ``` every 2 seconds. 

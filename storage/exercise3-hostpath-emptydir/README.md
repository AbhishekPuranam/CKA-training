### Setup

```sh
run : kubectl apply -f setup.yaml
```

### Problem Statement

- Question1: Create a deployment ``` cka ``` in ``` exam ``` namespace with ``` nginx ``` image. Ensure the mountpath ``` var/log/nginx``` is mounted to hostpath ``` /data ``` as ``` ReadOnly```

- Question2: Create a deployment ``` ckad ``` in ``` exam ``` namespace with ``` nginx ``` image. Ensure the mountpath ``` var/log/nginx``` is mounted to ``` emptydir ```

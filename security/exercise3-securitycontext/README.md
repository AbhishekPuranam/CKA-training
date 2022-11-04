### Setup

```sh
run : kubectl apply -f setup.yaml
```

### Problem Statement

- Question1: Create a pod ```secureos``` in ``` secure ``` namespace with  ``` redis ``` as image and container name as ``` secureubuntu ```. Create Security Context for pod as ```runAsUser: 1000 ``` and ``` runAsGroup: 3000 ```. Create SecurityContext for container ``` secureubuntu ``` as ```runAsUser: 2000 ``` and ``` runAsGroup: 3000 ```.  Set capabilities for container with ``` NET_ADMIN ``` and ```SYS_TIME```

- Question2: Create a deployment ```securedeploy``` in ``` secure ``` namespace with  ``` ubuntu ``` as image and container name as ``` secureubuntu ```. Create Security Context for pod as ```runAsUser: 1000 ``` and ``` runAsGroup: 3000 ```. Create SecurityContext for container ``` secureubuntu ``` as ```runAsUser: 2000 ``` and ``` runAsGroup: 3000 ```. Set capabilities for container with ``` NET_ADMIN ``` and ```SYS_TIME```

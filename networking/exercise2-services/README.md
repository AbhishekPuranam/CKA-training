### Setup for services
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements

- question1: create as ```clusterIP``` service ``` computesvc ``` for  pod ``` compute ``` in ``` cloud ``` namespace with port ``` 80 ```.
- question2: create as ```NodePort``` service ``` storagesvc ``` for  deployment ``` storage ``` in ``` cloud ``` namespace with port ``` 80 ``` and nodeport as ``` 31000 ```.
- question3: create as ```NodePort``` service ``` networksvc ``` for  deployment ``` network ``` in ``` cloud ``` namespace with port ``` 80 ``` .


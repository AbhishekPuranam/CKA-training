### Setup for DNS Check
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements

Namespace ```animals``` has pod named ```tiger``` and service named ```tiger```.  save the ```nslookup``` out of pod in ```pod.txt``` and service in ``` service.txt```
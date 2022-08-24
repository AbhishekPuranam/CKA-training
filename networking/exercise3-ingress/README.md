### Setup for ingress
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements

There are two services ``` eatsvc ``` and ``` fitsvc``` in ``` application ``` namespace. Create an Ingress ``` app-ingress ``` for both the services.
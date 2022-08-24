### Setup 
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements

- In the namespace ``` office ``` create a configmap ```officecm ``` with literals ``` empl1=radha ```, ``` empl2=rahim ``` and ``` empl3=robert ```. 
- In the namespace ``` office ``` create a secret ```officesecret ``` with literals ``` pass1=radha123 ```, ``` pass2=rahim123 ``` and ``` pass3=robert123 ```


- Question1: Create a pod ``` mountcm ``` in ``` office ``` namespace with image as ``` redis ```. Mount the configmap ``` officecm`` to the pod.
- Question2: Create a pod ``` mountsecret ``` in ``` office ``` namespace with image as ``` redis ```. Mount the secret ``` officesecret``` to the pod.
- Question3: Create a pod ``` envcm ``` in ``` office ``` namespace with image as ``` redis ```. Ensure configmap ``` officecm ``` is loaded as environment variables in the pod.
- Question4: Create a pod ``` envsecret ``` in ``` office ``` namespace with image as ``` redis ```. Ensure secret ``` officesecret ``` is loaded as environment variables in the pod.
- Question5: Create a pod ``` valuecm ``` in ``` office ``` namespace with image as ``` redis ```.  create new keys ``` hr``` ,```lab```, ```engineering``` . Ensure the values of ``` empl1```, ``` empl2``` and ``` empl3``` in configMap ``` officecm ``` are mapped to ``` hr``` ,```lab```, ```engineering``` keys in the pod respectively.
- Question6: Create a pod ``` valuesecret ``` in ``` office ``` namespace with image as ``` redis ```.  create new keys ``` hrpassword``` ,```labpassword```, ```engineeringpassword``` . Ensure values of ``` pass1```, ``` pass2``` and ``` pass3``` in secret ```officesecret``` are mapped to ``` hr``` ,```lab```, ```engineering```  keys in the pod respectively.
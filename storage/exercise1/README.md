## Troubleshoot the PVC and move it Bound
#### install the Setup for the lab
```sh
run : kubectl apply -f setup.yaml
```
#### Problem Statement
Update ``` pod-pv.yaml ```  and create pod to ensure it runs with the persistent volume claim ```staging-pvc ``` in ``` stage ``` namespace. Ensure the persistent volume claim ```staging-pvc ``` is ``` Bound ``` to the pod 
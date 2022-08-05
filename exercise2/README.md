## Create a Storage Class, Persistent Volume, Persistent Volume Claim and attach pod to PVC
#### Problem Statement
create a ```local ``` storage class  ``` local-storage ``` with volume binding mode as ``` WaitForFirstConsumer ``` . 
Create a ``` PersistentVolume ```  with name ``` pv-local ``` with access mode as ``` ReadWriteOnce ```, host path as ``` /mnt/data ``` and storage of ``` 15Gi ```
Create a ``` PersistentVolumeClaim ```  with name ``` pvc-local ``` with access mode as ``` ReadWriteOnce ``` and storage of ``` 5Gi ```
Create a ``` Pod ```  with name ``` pvc-pod ``` with image as ``` nginx ``` and mount the path ``` /var/log/nginx ``` to PersistentVolumeClaim ``` pvc-local ```
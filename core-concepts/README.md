### Problem Statement

Question1: Create a namespace ``` stage ```
Question2: Create a pod ```stagepod ``` in ``` stage ``` namespace with image as ```nginx ```
Question3: Create a deployment ``` stagedeployment``` in ``` stage ``` namespace with image as ```nginx:1.16 ``` and ```3 ``` replicas
Question4: Scala the replicas for  ``` stagedeployment``` to ```6 ``` replicas
Question5: Modify the image in deployment ``` stagedeployment```  to ``` nginx ``` with record flag enabled
Question6: rollback the image in deployment ``` stagedeployment```  to ``` nginx:1.16 ```

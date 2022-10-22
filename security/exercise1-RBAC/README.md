### Setup for RBAC
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements

Question1: Create a service account ``` stagebot ``` in ``` stage ``` namespace . Create a Clusterrole ``` developer ``` which can  ``` create, get, display, describe ``` for ``` pods, deployments,clusterroles,roles```. Create a clusterrolebinding ```developerbind ``` to bind the service account to role.

Question2: User ``` Mike ``` has sent his CSR to internal CA and waiting for the approval. Approve his certificate. Create a Clusterrole ``` clusterviewer ```  which can  ``` get, display, describe ``` for ``` pods, deployments ```. Create a clusterrolebinding ```viewbind ``` to bind the user to role.

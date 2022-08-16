### Setup for RBAC
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statements



Question1: Create a Network Policy ``` baby-policy ``` in ``` family ``` namespace, so that only ``` mother ``` pod in ``` mother``` namespace should be able to send  traffic to ``` baby ``` service . You need to restrict all the traffic going from ``` baby ``` .

Question2: Edit the Network Policy ``` baby-policy ``` in ``` family ``` namespace, so that only ``` mother ``` pods should be able to send traffic to ``` baby ``` service. You need to restrict all the traffic going from ``` baby ``` pod .

Question3: Edit Network Policy ``` baby-policy ``` in ``` family ``` namespace, so that ``` mother ``` pod in ``` mother``` namespace should be able to send  traffic to ``` baby ``` service . Also ``` father ``` pod in ``` father``` namespace should also be able to send  traffic to ``` baby ``` service. You need to restrict all the traffic going from ``` baby ``` pod .

Question4: Edit Network Policy ``` baby-policy ``` in ``` family ``` namespace, so that ``` mother ``` pods should be able to send  traffic to ``` baby ``` service . Also ``` father ``` pods should also be able to send  traffic to ``` baby ``` service. You need to restrict all the traffic going from ``` baby ``` pod.

Question5: Edit Network Policy ``` baby-policy ``` in ``` family ``` namespace, so that ``` mother ``` pods should be able to send  traffic to ``` baby ``` service . Also ``` father ``` pods should also be able to send  traffic to ``` baby ``` service . ``` baby ``` pod should be able to send traffic to ``` mother ``` service in ``` mother``` namespace and ``` father ``` service in ``` father``` namespace.

Question6: Edit Network Policy ``` baby-policy ``` in ``` family ``` namespace, so that ``` mother ``` pods should be able to send  traffic to ``` baby ``` service . Also ``` father ``` pods should also be able to send  traffic to ``` baby ``` service . ``` baby ``` pod should be able to send traffic to ``` mother ``` services and ``` father ``` services.


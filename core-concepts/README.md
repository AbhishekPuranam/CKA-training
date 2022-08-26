### Study Materials
- Kubernetes Architecture: https://www.youtube.com/watch?v=8C_SCDbUJTg&t=2s
- Kubernetes Pod lifecycle: https://www.youtube.com/watch?v=wlYESb124xM
- Kubernetes Namespaces : https://www.youtube.com/watch?v=K3jNo4z5Jx8
- Kubernetes Deployment: https://www.youtube.com/watch?v=Sulw5ndbE88
- Kubernetes Deployment yaml explained : https://www.youtube.com/watch?v=y_vy9NVeCzo
- Kubernetes rollout and Rollback: https://www.youtube.com/watch?v=fJCLxD3MpBQ

### K8s Reference links
- Kubernetes Components: https://kubernetes.io/docs/concepts/overview/components/
- Pod Lifecycle: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/
- Namespaces : https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
- Deployments: https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
- Create Pod: https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#run
- Create Deployment: https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#-em-deployment-em-
- Scale Deployment: https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#scale

## LAB

### Problem Statement

- Question1: Create a namespace ``` stage ```
- Question2: Create a pod ```stagepod ``` in ``` stage ``` namespace with image as ```nginx ```
- Question3: Create a deployment ``` stagedeployment``` in ``` stage ``` namespace with image as ```nginx:1.16 ``` and ```3 ``` replicas
- Question4: Scale the replicas for  ``` stagedeployment``` to ```6 ``` replicas
- Question5: Modify the image in deployment ``` stagedeployment```  to ``` nginx ``` with record flag enabled
- Question6: rollback the image in deployment ``` stagedeployment```  to ``` nginx:1.16 ```

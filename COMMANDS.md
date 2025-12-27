# Pod Commands in Kubernetes

### List all pods in the default namespace

```bash
kubectl get pods
```

### Describe a specific pod named "my-pod"

```bash
kubectl describe pod my-pod
```

### Get a summary of all pods in all namespaces

```bash
kubectl get pods --all-namespaces
```

### List a specific pod named "my-pod" in the default namespace

```bash
kubectl get pod my-pod
```

### Get the logs of a specific pod named "my-pod"

```bash
kubectl logs my-pod
```

### Get the details of the pod "my-pod" in Kubernetes in form of YAML

```bash
kubectl get pod my-pod -o yaml
```

### Execute a command inside the pod "my-pod"

```bash
kubectl exec -it my-pod -- /bin/bash
```

### Delete a specific pod named "my-pod"

```bash
kubectl delete pod my-pod
```

### Create a pod from a YAML file named "pod.yaml"

```bash
kubectl apply -f pod.yaml
```

# Service Commands in Kubernetes

### List all services in the default namespace

```bash
kubectl get services
```

### Describe a specific service named "my-service"

```bash
kubectl describe service my-service
```

### Get the details of the service "my-service" in Kubernetes in form of YAML

```bash
kubectl get service my-service -o yaml
```

### Get the details of a service named "my-service" in form of JSON

```bash
kubectl get service my-service -o json
```

### Search for a specific property (e.g., clusterIP) of a service named "my-service"

```bash
kubectl get service my-service -o jsonpath='{.spec.clusterIP}'
```

### Delete a specific service named "my-service"

```bash
kubectl delete service my-service
```

### Create a service from a YAML file named "service.yaml"

```bash
kubectl apply -f service.yaml
```

### Expose a deployment named "my-deployment" as a service

```bash
kubectl expose deployment my-deployment --type=LoadBalancer --name=my-service
```

### Get the external IP of a service named "my-service"

```bash
kubectl get service my-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

### Expose a pod named "my-pod" as a service

```bash
kubectl expose pod my-pod --type=NodePort --name=my-service
```

### Get the cluster IP of a service named "my-service"

```bash
kubectl get service my-service -o jsonpath='{.spec.clusterIP}'
```

# Deployment Commands in Kubernetes

### List all deployments in the default namespace

```bash
kubectl get deployments
```

### Describe a specific deployment named "my-deployment"

```bash
kubectl describe deployment my-deployment
```

### Get the details of the deployment "my-deployment" in Kubernetes in form of YAML

```bash
kubectl get deployment my-deployment -o yaml
```

### Get pods created by a deployment named "my-deployment"

```bash
kubectl get pods -l app=my-deployment
```

### Scale a deployment named "my-deployment" to 5 replicas

```bash
kubectl scale deployment my-deployment --replicas=5
```

### Get the number of replicas of a deployment named "my-deployment"

```bash
kubectl get deployment my-deployment -o jsonpath='{.spec.replicas}'
```

### Update the image of a deployment named "my-deployment" to "nginx:latest"

```bash
kubectl set image deployment my-deployment my-container=nginx:latest
```

### Delete a specific deployment named "my-deployment"

```bash
kubectl delete deployment my-deployment
```

### Create a deployment from a YAML file named "deployment.yaml"

```bash
kubectl apply -f deployment.yaml
```

### Rollout the status of a deployment named "my-deployment"

```bash
kubectl rollout status deployment my-deployment
```

### Rollback a deployment named "my-deployment" to the previous revision

```bash
kubectl rollout undo deployment my-deployment
```

### Get the history of a deployment named "my-deployment"

```bash
kubectl rollout history deployment my-deployment
```

### Pause the rollout of a deployment named "my-deployment"

```bash
kubectl rollout pause deployment my-deployment
```

### Resume the rollout of a deployment named "my-deployment"

```bash
kubectl rollout resume deployment my-deployment
```

# StatefulSet Commands in Kubernetes

### List all statefulsets in the default namespace

```bash
kubectl get statefulsets
```

### Describe a specific statefulset named "my-statefulset"

```bash
kubectl describe statefulset my-statefulset
```

### Get the details of the statefulset "my-statefulset" in Kubernetes in form of YAML

```bash
kubectl get statefulset my-statefulset -o yaml
```

### Get pods created by a statefulset named "my-statefulset"

```bash
kubectl get pods -l app=my-statefulset
```

### Scale a statefulset named "my-statefulset" to 3 replicas

```bash
kubectl scale statefulset my-statefulset --replicas=3
```

### Delete a specific statefulset named "my-statefulset"

```bash
kubectl delete statefulset my-statefulset
```

### Create a statefulset from a YAML file named "statefulset.yaml"

```bash
kubectl apply -f statefulset.yaml
```

### Rollout the status of a statefulset named "my-statefulset"

```bash
kubectl rollout status statefulset my-statefulset
```

### Rollback a statefulset named "my-statefulset" to the previous revision

```bash
kubectl rollout undo statefulset my-statefulset
```

### Get the history of a statefulset named "my-statefulset"

```bash
kubectl rollout history statefulset my-statefulset
```

### Pause the rollout of a statefulset named "my-statefulset"

```bash
kubectl rollout pause statefulset my-statefulset
```

### Resume the rollout of a statefulset named "my-statefulset"

```bash
kubectl rollout resume statefulset my-statefulset
```

# PVC Commands in Kubernetes

### List all persistent volume claims (PVCs) in the default namespace

```bash
kubectl get pvc
```

### Describe a specific PVC named "my-pvc"

```bash
kubectl describe pvc my-pvc
```

### Get the details of the PVC "my-pvc" in Kubernetes in form of YAML

```bash
kubectl get pvc my-pvc -o yaml
```

### Delete a specific PVC named "my-pvc"

```bash
kubectl delete pvc my-pvc
```

### Create a PVC from a YAML file named "pvc.yaml"

```bash
kubectl apply -f pvc.yaml
```

### Get persistent volumes (PVs) associated with a PVC named "my-pvc"

```bash
kubectl get pv -o jsonpath='{.items[?(@.spec.claimRef.name=="my-pvc")]}'
```

### List all persistent volumes (PVs) in the cluster

```bash
kubectl get pv
```

# Storage Class Commands in Kubernetes

### List all the storage classes in Kubernetes

```bash
kubectl get storageclass
```

### Describe a specific storage class named "standard"

```bash
kubectl describe storageclass standard
```

### Get the details of the standard storage class in Kubernetes in form of YAML

```bash
kubectl get storageclass standard -o yaml
```
#########################################
## Pod Commands in Kubernetes
#########################################

# List all pods in the default namespace
kubectl get pods

# Describe a specific pod named "my-pod"
kubectl describe pod my-pod

# To get a summary of all pods in all namespaces, use the following command:
kubectl get pods --all-namespaces

# To list a specific pod named "my-pod" in the default namespace, use the following command:
kubectl get pod my-pod

# To get the logs of a specific pod named "my-pod", use the following command:
kubectl logs my-pod

# To get the details of the pod "my-pod" in Kubernetes in form of YAML, use the following command:
kubectl get pod my-pod -o yaml

# To execute a command inside the pod "my-pod", use the following command:
kubectl exec -it my-pod -- /bin/bash

# To delete a specific pod named "my-pod", use the following command:
kubectl delete pod my-pod

# To create a pod from a YAML file named "pod.yaml", use the following command:
kubectl apply -f pod.yaml

######################################
# Service Commands in Kubernetes
######################################

# List all services in the default namespace
kubectl get services

# Describe a specific service named "my-service"
kubectl describe service my-service

# To get the details of the service "my-service" in Kubernetes in form of YAML, use the following command:
kubectl get service my-service -o yaml

# To get the details of a service named "my-service" in form of JSON, use the following command:
kubectl get service my-service -o json

# To search for a specific property (e.g., clusterIP) of a service named "my-service", use the following command:
kubectl get service my-service -o jsonpath='{.spec.clusterIP}'

# To delete a specific service named "my-service", use the following command:
kubectl delete service my-service

# To create a service from a YAML file named "service.yaml", use the following command:
kubectl apply -f service.yaml

# To expose a deployment named "my-deployment" as a service, use the following command:
kubectl expose deployment my-deployment --type=LoadBalancer --name=my-service

# To get the external IP of a service named "my-service", use the following command:
kubectl get service my-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}'

# To expose a pod named "my-pod" as a service, use the following command:
kubectl expose pod my-pod --type=NodePort --name=my-service

# To get the cluster IP of a service named "my-service", use the following command:
kubectl get service my-service -o jsonpath='{.spec.clusterIP}'

##########################################
## Deployment Commands in Kubernetes
##########################################

# List all deployments in the default namespace
kubectl get deployments

# Describe a specific deployment named "my-deployment"
kubectl describe deployment my-deployment

# To get the details of the deployment "my-deployment" in Kubernetes in form of YAML, use the following command:
kubectl get deployment my-deployment -o yaml

# To get pods created by a deployment named "my-deployment", use the following command:
kubectl get pods -l app=my-deployment

# To scale a deployment named "my-deployment" to 5 replicas, use the following command:
kubectl scale deployment my-deployment --replicas=5

# to get the number of replicas of a deployment named "my-deployment
kubectl get deployment my-deployment -o jsonpath='{.spec.replicas}'

# To update the image of a deployment named "my-deployment" to "nginx:latest", use the following command:
kubectl set image deployment my-deployment my-container=nginx:latest

# To delete a specific deployment named "my-deployment", use the following command:
kubectl delete deployment my-deployment

# To create a deployment from a YAML file named "deployment.yaml", use the following command:
kubectl apply -f deployment.yaml

# To rollout the status of a deployment named "my-deployment
kubectl rollout status deployment my-deployment

# To rollback a deployment named "my-deployment" to the previous revision, use the following command:
kubectl rollout undo deployment my-deployment

# To get the history of a deployment named "my-deployment
kubectl rollout history deployment my-deployment

# To pause the rollout of a deployment named "my-deployment
kubectl rollout pause deployment my-deployment

# To resume the rollout of a deployment named "my-deployment
kubectl rollout resume deployment my-deployment

##########################################
## StatefulSet Commands in Kubernetes
##########################################

# List all statefulsets in the default namespace
kubectl get statefulsets

# Describe a specific statefulset named "my-statefulset"
kubectl describe statefulset my-statefulset

# To get the details of the statefulset "my-statefulset" in Kubernetes in form of YAML, use the following command:
kubectl get statefulset my-statefulset -o yaml

# To get pods created by a statefulset named "my-statefulset", use the following command:
kubectl get pods -l app=my-statefulset

# To scale a statefulset named "my-statefulset" to 3 replicas, use the following command:
kubectl scale statefulset my-statefulset --replicas=3

# To delete a specific statefulset named "my-statefulset", use the following command:
kubectl delete statefulset my-statefulset

# To create a statefulset from a YAML file named "statefulset.yaml", use the following command:
kubectl apply -f statefulset.yaml

# To rollout the status of a statefulset named "my-statefulset
kubectl rollout status statefulset my-statefulset

# To rollback a statefulset named "my-statefulset" to the previous revision, use the following command:
kubectl rollout undo statefulset my-statefulset

# To get the history of a statefulset named "my-statefulset
kubectl rollout history statefulset my-statefulset

# To pause the rollout of a statefulset named "my-statefulset
kubectl rollout pause statefulset my-statefulset

# To resume the rollout of a statefulset named "my-statefulset
kubectl rollout resume statefulset my-statefulset

##########################################
# PVC Commands in Kubernetes
##########################################

# List all persistent volume claims (PVCs) in the default namespace
kubectl get pvc

# Describe a specific PVC named "my-pvc"
kubectl describe pvc my-pvc

# To get the details of the PVC "my-pvc" in Kubernetes in form of YAML, use the following command:
kubectl get pvc my-pvc -o yaml

# To delete a specific PVC named "my-pvc", use the following command:
kubectl delete pvc my-pvc

# To create a PVC from a YAML file named "pvc.yaml", use the following command:
kubectl apply -f pvc.yaml

# To get persistent volumes (PVs) associated with a PVC named "my-pvc", use the following command:
kubectl get pv -o jsonpath='{.items[?(@.spec.claimRef.name=="my-pvc")]}'

# To list all persistent volumes (PVs) in the cluster, use the following command:
kubectl get pv

##########################################
## Storage Class Commands in Kubernetes
##########################################

# List all the storage classes in Kubernetes
kubectl get storageclass

# Describe a specific storage class named "standard"
kubectl describe storageclass standard

# To get the details of the standard storage class in Kubernetes in form of YAML, use the following command:
kubectl get storageclass standard -o yaml
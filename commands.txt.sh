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

# To get the logs of a specific container named "my-container" in the pod "my-pod", use the following command:
kubectl logs my-pod -c my-container

# To stream the logs of a specific pod named "my-pod", use the following command:
kubectl logs -f my-pod

# To get the logs of previous instance of a pod named "my-pod", use the following command:
kubectl logs -p my-pod

# To search for a specific property (e.g., status.phase) of a pod named "my-pod", use the following command:
kubectl get pod my-pod -o jsonpath='{.status.phase}'

# To get the details of all pods in Kubernetes in form of YAML, use the following command:
kubectl get pods -o yaml

# To get the details of all pods in Kubernetes in form of JSON, use the following command:
kubectl get pods -o json

# To get the details of a pod named "my-pod" in Kubernetes in form of JSON, use the following command:
kubectl get pod my-pod -o json

# To watch the status of pods in real-time, use the following command:
kubectl get pods -w

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

#############################################
# Jobs & CronJobs Commands in Kubernetes
#############################################

# List all jobs in the default namespace
kubectl get jobs

# Describe a specific job named "my-job"
kubectl describe job my-job

# To get the details of the job "my-job" in Kubernetes in form of YAML, use the following command:
kubectl get job my-job -o yaml

# To delete a specific job named "my-job", use the following command:
kubectl delete job my-job

# To create a job from a YAML file named "job.yaml", use the following command:
kubectl apply -f job.yaml

# List all cronjobs in the default namespace
kubectl get cronjobs

# Describe a specific cronjob named "my-cronjob"
kubectl describe cronjob my-cronjob

# To get the details of the cronjob "my-cronjob" in Kubernetes in form of YAML, use the following command:
kubectl get cronjob my-cronjob -o yaml

# To delete a specific cronjob named "my-cronjob", use the following command:
kubectl delete cronjob my-cronjob

# To create a cronjob from a YAML file named "cronjob.yaml", use the following command:
kubectl apply -f cronjob.yaml

##########################################
# ConfigMap Commands in Kubernetes
##########################################

# List all ConfigMaps in the default namespace
kubectl get configmaps  

# Describe a specific ConfigMap named "my-configmap"
kubectl describe configmap my-configmap

# To get the details of the ConfigMap "my-configmap" in Kubernetes in form of YAML, use the following command:
kubectl get configmap my-configmap -o yaml

# To delete a specific ConfigMap named "my-configmap", use the following command:
kubectl delete configmap my-configmap

# To create a ConfigMap from a YAML file named "configmap.yaml", use the following command:
kubectl apply -f configmap.yaml

# CLI command to create a ConfigMap named "my-configmap" from a file named "config.txt"
kubectl create configmap my-configmap --from-file=config.txt

# CLI command to create a ConfigMap named "my-configmap" from literal key-value pairs
kubectl create configmap app-config --from-literal=APP_ENV=dev --from-literal=LOG_LEVEL=debug

##########################################
# Secret Commands in Kubernetes
##########################################

# List all Secrets in the default namespace
kubectl get secrets

# Describe a specific Secret named "my-secret"
kubectl describe secret my-secret

# To get the details of the Secret "my-secret" in Kubernetes in form of YAML, use the following command:
kubectl get secret my-secret -o yaml

# To delete a specific Secret named "my-secret", use the following command:
kubectl delete secret my-secret

# To create a Secret from a YAML file named "secret.yaml", use the following command:
kubectl apply -f secret.yaml

# CLI command to create a Secret named "my-secret" from a file named "secret.txt"
kubectl create secret generic my-secret --from-file=secret.txt

# CLI command to create a Secret named "my-secret" from literal key-value pairs
kubectl create secret generic db-secret --from-literal=username=admin --from-literal=password=pass123

###########################################
# ServiceAccount Commands in Kubernetes
###########################################

# List all ServiceAccounts in the default namespace
kubectl get serviceaccounts

# Describe a specific ServiceAccount named "my-serviceaccount"
kubectl describe serviceaccount my-serviceaccount

# To get the details of the ServiceAccount "my-serviceaccount" in Kubernetes in form of YAML, use the following command:
kubectl get serviceaccount my-serviceaccount -o yaml

# To delete a specific ServiceAccount named "my-serviceaccount", use the following command:
kubectl delete serviceaccount my-serviceaccount

# To create a ServiceAccount from a YAML file named "serviceaccount.yaml", use the following command:
kubectl apply -f serviceaccount.yaml

# CLI command to create a ServiceAccount named "my-serviceaccount"
kubectl create serviceaccount my-serviceaccount

# To get the tokens associated with a ServiceAccount named "my-serviceaccount", use the following command:
kubectl get secret -o jsonpath='{.items[?(@.metadata.annotations.kubernetes.io/service-account.name=="my-serviceaccount")].data.token}' | base64 --decode

# To link a ServiceAccount named "my-serviceaccount" to a pod named "my-pod", use the following command:
kubectl patch pod my-pod -p '{"spec":{"serviceAccountName":"my-serviceaccount"}}'

# To create role binding for a ServiceAccount named "my-serviceaccount" to a role named "my-role" in the default namespace, use the following command:
kubectl create rolebinding my-rolebinding --role=my-role --serviceaccount=default:my-serviceaccount

# To create role for a ServiceAccount
kubectl create role my-role --verb=get,list,watch --resource=pods

# To create a role binding for a ServiceAccount and bind a role to it
kubectl create rolebinding my-rolebinding --role=my-role --serviceaccount=default:my-serviceaccount

##########################################
# Taint Nodes, Affinity & anti-affinity Commands in Kubernetes
##########################################

# To taint a node named "my-node" with key "key1", value "value1", and effect "NoSchedule", use the following command:
kubectl taint nodes my-node key1=value1:NoSchedule
kubectl run no-toleration-pod --image=nginx

# To remove a taint from a node named "my-node" with key "key1" and effect "NoSchedule", use the following command:
kubectl taint nodes my-node key1:NoSchedule-
kubectl taint node minikube dedicated=infra:NoSchedule-

# Patch the pod to add affinity that prefers nodes with label "disktype=ssd", use the following YAML snippet:
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: affinity-pod
spec:
  affinity:
    nodeAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 1
        preference:
          matchExpressions:
          - key: disktype
            operator: In
            values: [ssd]
  containers:
  - name: nginx
    image: nginx
EOF

# Patch the pod to add anti-affinity that avoids nodes with label "disktype=hdd", use the following YAML snippet:
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: anti-affinity-pod
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchExpressions:
          - key: disktype
            operator: NotIn
            values: [hdd]
  containers:
  - name: nginx
    image: nginx
EOF

##########################################
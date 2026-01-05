# Deployment Commands in Kubernetes

## List all deployments in the default namespace

```bash
kubectl get deployments
```

## Describe a specific deployment named "my-deployment"

```bash
kubectl describe deployment my-deployment
```

## Get the details of the deployment "my-deployment" in Kubernetes in form of YAML

```bash
kubectl get deployment my-deployment -o yaml
```

## Get pods created by a deployment named "my-deployment"

```bash
kubectl get pods -l app=my-deployment
```

## Scale a deployment named "my-deployment" to 5 replicas

```bash
kubectl scale deployment my-deployment --replicas=5
```

## Get the number of replicas of a deployment named "my-deployment"

```bash
kubectl get deployment my-deployment -o jsonpath='{.spec.replicas}'
```

## Update the image of a deployment named "my-deployment" to "nginx:latest"

```bash
kubectl set image deployment my-deployment my-container=nginx:latest
```

## Delete a specific deployment named "my-deployment"

```bash
kubectl delete deployment my-deployment
```

## Create a deployment from a YAML file named "deployment.yaml"

```bash
kubectl apply -f deployment.yaml
```

## Rollout the status of a deployment named "my-deployment"

```bash
kubectl rollout status deployment my-deployment
```

## Rollback a deployment named "my-deployment" to the previous revision

```bash
kubectl rollout undo deployment my-deployment
```

## Get the history of a deployment named "my-deployment"

```bash
kubectl rollout history deployment my-deployment
```

## Pause the rollout of a deployment named "my-deployment"

```bash
kubectl rollout pause deployment my-deployment
```

## Resume the rollout of a deployment named "my-deployment"

```bash
kubectl rollout resume deployment my-deployment
```

## Create a deployment imperatively

```bash
kubectl create deployment nginx-deployment --image=nginx --replicas=3
```

## Scale a deployment to 5 replicas

```bash
kubectl scale deployment nginx-deployment --replicas=5
```

## Update the image of a deployment

```bash
kubectl set image deployment nginx-deployment nginx=nginx:1.20
```

## Set environment variables for a deployment

```bash
kubectl set env deployment nginx-deployment APP_ENV=production
```

## Add labels to a deployment

```bash
kubectl label deployment nginx-deployment environment=production
```

## View rollout history

```bash
kubectl rollout history deployment nginx-deployment
```

## Roll back to a specific revision

```bash
kubectl rollout undo deployment nginx-deployment --to-revision=2
```

## Pause and resume rollout

```bash
kubectl rollout pause deployment nginx-deployment
kubectl rollout resume deployment nginx-deployment
```

[Back to README](../README.md)
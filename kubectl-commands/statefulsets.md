# StatefulSet Commands in Kubernetes

## List all statefulsets in the default namespace

```bash
kubectl get statefulsets
```

## Describe a specific statefulset named "my-statefulset"

```bash
kubectl describe statefulset my-statefulset
```

## Get the details of the statefulset "my-statefulset" in Kubernetes in form of YAML

```bash
kubectl get statefulset my-statefulset -o yaml
```

## Get pods created by a statefulset named "my-statefulset"

```bash
kubectl get pods -l app=my-statefulset
```

## Scale a statefulset named "my-statefulset" to 3 replicas

```bash
kubectl scale statefulset my-statefulset --replicas=3
```

## Delete a specific statefulset named "my-statefulset"

```bash
kubectl delete statefulset my-statefulset
```

## Create a statefulset from a YAML file named "statefulset.yaml"

```bash
kubectl apply -f statefulset.yaml
```

## Rollout the status of a statefulset named "my-statefulset"

```bash
kubectl rollout status statefulset my-statefulset
```

## Rollback a statefulset named "my-statefulset" to the previous revision

```bash
kubectl rollout undo statefulset my-statefulset
```

## Get the history of a statefulset named "my-statefulset"

```bash
kubectl rollout history statefulset my-statefulset
```

## Pause the rollout of a statefulset named "my-statefulset"

```bash
kubectl rollout pause statefulset my-statefulset
```

## Resume the rollout of a statefulset named "my-statefulset"

```bash
kubectl rollout resume statefulset my-statefulset
```

## Create a StatefulSet imperatively

```bash
kubectl create statefulset mysql --image=mysql:5.7 --replicas=3 --port=3306
```

## Scale a StatefulSet

```bash
kubectl scale statefulset mysql --replicas=5
```

## Update the image of a StatefulSet

```bash
kubectl set image statefulset mysql mysql=mysql:8.0
```

## Delete a StatefulSet and its pods

```bash
kubectl delete statefulset mysql --cascade=true
```

## View StatefulSet rollout status

```bash
kubectl rollout status statefulset mysql
```

## Force delete a StatefulSet pod

```bash
kubectl delete pod mysql-0 --grace-period=0 --force
```

[Back to README](../README.md)
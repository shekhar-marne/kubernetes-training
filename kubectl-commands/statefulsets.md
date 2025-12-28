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

[Back to README](../README.md)
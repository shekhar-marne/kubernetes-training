# Pod Commands in Kubernetes

## List all pods in the default namespace

```bash
kubectl get pods
```

## Describe a specific pod named "my-pod"

```bash
kubectl describe pod my-pod
```

## Get a summary of all pods in all namespaces

```bash
kubectl get pods --all-namespaces
```

## List a specific pod named "my-pod" in the default namespace

```bash
kubectl get pod my-pod
```

## Get the logs of a specific pod named "my-pod"

```bash
kubectl logs my-pod
```

## Get the logs of a specific container named "my-container" in the pod "my-pod"

```bash
kubectl logs my-pod -c my-container
```

## Stream the logs of a specific pod named "my-pod"

```bash
kubectl logs -f my-pod
```

## Get the logs of previous instance of a pod named "my-pod"

```bash
kubectl logs -p my-pod
```

## Search for a specific property (e.g., status.phase) of a pod named "my-pod"

```bash
kubectl get pod my-pod -o jsonpath='{.status.phase}'
```

## Get the details of all pods in Kubernetes in form of YAML

```bash
kubectl get pods -o yaml
```

## Get the details of all pods in Kubernetes in form of JSON

```bash
kubectl get pods -o json
```

## Get the details of a pod named "my-pod" in Kubernetes in form of JSON

```bash
kubectl get pod my-pod -o json
```

## Watch the status of pods in real-time

```bash
kubectl get pods -w
```

## Get the details of the pod "my-pod" in Kubernetes in form of YAML

```bash
kubectl get pod my-pod -o yaml
```

## Execute a command inside the pod "my-pod"

```bash
kubectl exec -it my-pod -- /bin/bash
```

## Delete a specific pod named "my-pod"

```bash
kubectl delete pod my-pod
```

## Create a pod from a YAML file named "pod.yaml"

```bash
kubectl apply -f pod.yaml
```

[Back to README](../README.md)
# Storage Class Commands in Kubernetes

## List all the storage classes in Kubernetes

```bash
kubectl get storageclass
```

## Describe a specific storage class named "standard"

```bash
kubectl describe storageclass standard
```

## Get the details of the standard storage class in Kubernetes in form of YAML

```bash
kubectl get storageclass standard -o yaml
```

[Back to README](../README.md)
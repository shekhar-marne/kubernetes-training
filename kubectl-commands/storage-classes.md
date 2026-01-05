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

## Create a StorageClass imperatively

```bash
kubectl create storageclass fast-ssd --provisioner=kubernetes.io/aws-ebs --parameters=type=gp2 --reclaimPolicy=Retain
```

## Set default StorageClass

```bash
kubectl patch storageclass fast-ssd -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
```

## Remove default StorageClass annotation

```bash
kubectl patch storageclass standard -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":null}}}'
```

## Describe a StorageClass

```bash
kubectl describe storageclass fast-ssd
```

[Back to README](../README.md)
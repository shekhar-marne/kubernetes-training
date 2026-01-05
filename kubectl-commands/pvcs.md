# PVC Commands in Kubernetes

## List all persistent volume claims (PVCs) in the default namespace

```bash
kubectl get pvc
```

## Describe a specific PVC named "my-pvc"

```bash
kubectl describe pvc my-pvc
```

## Get the details of the PVC "my-pvc" in Kubernetes in form of YAML

```bash
kubectl get pvc my-pvc -o yaml
```

## Delete a specific PVC named "my-pvc"

```bash
kubectl delete pvc my-pvc
```

## Create a PVC from a YAML file named "pvc.yaml"

```bash
kubectl apply -f pvc.yaml
```

## Get persistent volumes (PVs) associated with a PVC named "my-pvc"

```bash
kubectl get pv -o jsonpath='{.items[?(@.spec.claimRef.name=="my-pvc")]}'
```

## List all persistent volumes (PVs) in the cluster

```bash
kubectl get pv
```

## Create a PVC imperatively

```bash
kubectl create pvc my-pvc --access-mode=ReadWriteOnce --storage=10Gi
```

## Create a PVC with specific storage class

```bash
kubectl create pvc my-pvc --access-mode=ReadWriteOnce --storage=10Gi --storage-class-name=fast-ssd
```

## Resize a PVC

```bash
kubectl patch pvc my-pvc -p '{"spec":{"resources":{"requests":{"storage":"20Gi"}}}}'
```

## Bind a PVC to a specific PV

```bash
kubectl patch pvc my-pvc -p '{"spec":{"volumeName":"my-pv"}}'
```

## Check PVC events

```bash
kubectl describe pvc my-pvc
```

[Back to README](../README.md)
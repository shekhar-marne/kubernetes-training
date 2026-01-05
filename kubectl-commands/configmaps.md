# ConfigMap Commands in Kubernetes

## List all ConfigMaps in the default namespace

```bash
kubectl get configmaps
```

## Describe a specific ConfigMap named "my-configmap"

```bash
kubectl describe configmap my-configmap
```

## Get the details of the ConfigMap "my-configmap" in Kubernetes in form of YAML

```bash
kubectl get configmap my-configmap -o yaml
```

## Delete a specific ConfigMap named "my-configmap"

```bash
kubectl delete configmap my-configmap
```

## Create a ConfigMap from a YAML file named "configmap.yaml"

```bash
kubectl apply -f configmap.yaml
```

## Create a ConfigMap named "my-configmap" from a file named "config.txt"

```bash
kubectl create configmap my-configmap --from-file=config.txt
```

## Create a ConfigMap named "app-config" from literal key-value pairs

```bash
kubectl create configmap app-config --from-literal=APP_ENV=dev --from-literal=LOG_LEVEL=debug
```

## Create a ConfigMap from multiple files

```bash
kubectl create configmap my-config --from-file=config1.txt --from-file=config2.txt
```

## Create a ConfigMap from a directory

```bash
kubectl create configmap my-config --from-file=./config-dir/
```

## Create a ConfigMap with binary data

```bash
kubectl create configmap binary-config --from-file=binary-file.bin
```

## Update a ConfigMap

```bash
kubectl create configmap my-config --from-literal=key1=value1 --dry-run=client -o yaml | kubectl apply -f -
```

## Edit a ConfigMap

```bash
kubectl edit configmap my-config
```

[Back to README](../README.md)
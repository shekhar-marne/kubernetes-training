# Secret Commands in Kubernetes

## List all Secrets in the default namespace

```bash
kubectl get secrets
```

## Describe a specific Secret named "my-secret"

```bash
kubectl describe secret my-secret
```

## Get the details of the Secret "my-secret" in Kubernetes in form of YAML

```bash
kubectl get secret my-secret -o yaml
```

## Delete a specific Secret named "my-secret"

```bash
kubectl delete secret my-secret
```

## Create a Secret from a YAML file named "secret.yaml"

```bash
kubectl apply -f secret.yaml
```

## Create a Secret named "my-secret" from a file named "secret.txt"

```bash
kubectl create secret generic my-secret --from-file=secret.txt
```

## Create a Secret named "db-secret" from literal key-value pairs

```bash
kubectl create secret generic db-secret --from-literal=username=admin --from-literal=password=pass123
```

## Create a TLS Secret

```bash
kubectl create secret tls my-tls-secret --cert=tls.crt --key=tls.key
```

## Create a Docker registry Secret

```bash
kubectl create secret docker-registry my-registry-secret --docker-server=myregistry.com --docker-username=myuser --docker-password=mypass
```

## Create a Secret from files

```bash
kubectl create secret generic my-secret --from-file=username.txt --from-file=password.txt
```

## Create a Secret from environment file

```bash
kubectl create secret generic my-secret --from-env-file=.env
```

## Update a Secret

```bash
kubectl create secret generic my-secret --from-literal=key1=value1 --dry-run=client -o yaml | kubectl apply -f -
```

## Edit a Secret

```bash
kubectl edit secret my-secret
```

[Back to README](../README.md)
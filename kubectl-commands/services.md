# Service Commands in Kubernetes

[Back to README](../README.md)

## List all services in the default namespace

```bash
kubectl get services
```

## Describe a specific service named "my-service"

```bash
kubectl describe service my-service
```

## Get the details of the service "my-service" in Kubernetes in form of YAML

```bash
kubectl get service my-service -o yaml
```

## Get the details of a service named "my-service" in form of JSON

```bash
kubectl get service my-service -o json
```

## Search for a specific property (e.g., clusterIP) of a service named "my-service"

```bash
kubectl get service my-service -o jsonpath='{.spec.clusterIP}'
```

## Delete a specific service named "my-service"

```bash
kubectl delete service my-service
```

## Create a service from a YAML file named "service.yaml"

```bash
kubectl apply -f service.yaml
```

## Expose a deployment named "my-deployment" as a service

```bash
kubectl expose deployment my-deployment --type=LoadBalancer --name=my-service
```

## Get the external IP of a service named "my-service"

```bash
kubectl get service my-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}'
```

## Expose a pod named "my-pod" as a service

```bash
kubectl expose pod my-pod --type=NodePort --name=my-service
```

## Get the cluster IP of a service named "my-service"

```bash
kubectl get service my-service -o jsonpath='{.spec.clusterIP}'
```

## Create a service imperatively for a deployment

```bash
kubectl expose deployment my-deployment --type=ClusterIP --port=80 --target-port=8080
```

## Create a LoadBalancer service

```bash
kubectl expose deployment my-deployment --type=LoadBalancer --port=80 --target-port=8080
```

## Create a NodePort service

```bash
kubectl expose deployment my-deployment --type=NodePort --port=80 --target-port=8080
```

## Create a service with multiple ports

```bash
kubectl expose deployment my-deployment --type=ClusterIP --port=80,443 --target-port=8080,8443
```

## Create a service with session affinity

```bash
kubectl expose deployment my-deployment --type=ClusterIP --port=80 --target-port=8080 --session-affinity=ClientIP
```

## Edit a service

```bash
kubectl edit service my-service
```

[Back to README](../README.md)
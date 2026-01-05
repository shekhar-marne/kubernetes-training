# Taint Nodes, Affinity & Anti-affinity Commands in Kubernetes

[Back to README](../README.md)

## Taint a node named "my-node" with key "key1", value "value1", and effect "NoSchedule"

```bash
kubectl taint nodes my-node key1=value1:NoSchedule
kubectl run no-toleration-pod --image=nginx
```

## Remove a taint from a node named "my-node" with key "key1" and effect "NoSchedule"

```bash
kubectl taint nodes my-node key1:NoSchedule-
kubectl taint node minikube dedicated=infra:NoSchedule-
```

## Patch the pod to add affinity that prefers nodes with label "disktype=ssd"

```yaml
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: affinity-pod
spec:
  affinity:
    nodeAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 1
        preference:
          matchExpressions:
          - key: disktype
            operator: In
            values: [ssd]
  containers:
  - name: nginx
    image: nginx
EOF
```

## Patch the pod to add anti-affinity that avoids nodes with label "disktype=hdd"

```yaml
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: anti-affinity-pod
spec:
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
        - matchExpressions:
          - key: disktype
            operator: NotIn
            values: [hdd]
  containers:
  - name: nginx
    image: nginx
EOF
```

## Add multiple taints to a node

```bash
kubectl taint nodes my-node dedicated=experimental:NoSchedule gpu=true:NoSchedule
```

## Remove all taints from a node

```bash
kubectl taint nodes my-node dedicated- gpu- key1-
```

## Label nodes for affinity

```bash
kubectl label nodes my-node disktype=ssd
kubectl label nodes my-node zone=us-west
```

## Create pod with inter-pod affinity

```yaml
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: affinity-pod
spec:
  affinity:
    podAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
      - labelSelector:
          matchExpressions:
          - key: app
            operator: In
            values: [web]
        topologyKey: kubernetes.io/hostname
  containers:
  - name: nginx
    image: nginx
EOF
```

## Create pod with inter-pod anti-affinity

```yaml
cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: anti-affinity-pod
spec:
  affinity:
    podAntiAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 100
        podAffinityTerm:
          labelSelector:
            matchExpressions:
            - key: app
              operator: In
              values: [web]
          topologyKey: kubernetes.io/hostname
  containers:
  - name: nginx
    image: nginx
EOF
```

[Back to README](../README.md)
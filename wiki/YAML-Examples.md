# kubectl Command Reference

This page provides a comprehensive reference for kubectl commands, organized by resource type.

## Core Commands

### Cluster Management
```bash
# Get cluster information
kubectl cluster-info

# Get cluster status
kubectl get componentstatuses

# Get API versions
kubectl api-versions
```

### Node Management
```bash
# List all nodes
kubectl get nodes

# Get detailed node information
kubectl describe node <node-name>

# Label a node
kubectl label nodes <node-name> key=value

# Cordon a node (mark as unschedulable)
kubectl cordon <node-name>

# Uncordon a node
kubectl uncordon <node-name>
```

## Workload Resources

### Pods
```bash
# List pods
kubectl get pods

# Get pod details
kubectl describe pod <pod-name>

# Create a pod
kubectl run <pod-name> --image=<image>

# Delete a pod
kubectl delete pod <pod-name>

# Execute commands in a pod
kubectl exec -it <pod-name> -- /bin/bash

# Get pod logs
kubectl logs <pod-name>
```

### Deployments
```bash
# List deployments
kubectl get deployments

# Create a deployment
kubectl create deployment <name> --image=<image>

# Scale a deployment
kubectl scale deployment <name> --replicas=<count>

# Update deployment image
kubectl set image deployment/<name> <container>=<image>

# Check rollout status
kubectl rollout status deployment/<name>
```

### Services
```bash
# List services
kubectl get services

# Create a service
kubectl expose deployment <deployment-name> --type=<type> --port=<port>

# Get service endpoints
kubectl get endpoints
```

## Configuration Resources

### ConfigMaps
```bash
# List ConfigMaps
kubectl get configmaps

# Create ConfigMap from literal
kubectl create configmap <name> --from-literal=key=value

# Create ConfigMap from file
kubectl create configmap <name> --from-file=<file>
```

### Secrets
```bash
# List secrets
kubectl get secrets

# Create generic secret
kubectl create secret generic <name> --from-literal=key=value

# Create TLS secret
kubectl create secret tls <name> --cert=<cert> --key=<key>
```

## Storage Resources

### Persistent Volumes
```bash
# List PVs
kubectl get pv

# List PVCs
kubectl get pvc

# Create PVC
kubectl create pvc <name> --access-mode=<mode> --storage=<size>
```

## Advanced Commands

### Debugging
```bash
# Get events
kubectl get events

# Check pod conditions
kubectl get pods --field-selector=status.phase!=Running

# Debug with temporary pod
kubectl run debug --image=busybox --rm -it --restart=Never -- sh
```

### Context Management
```bash
# List contexts
kubectl config get-contexts

# Switch context
kubectl config use-context <context>

# Set namespace
kubectl config set-context --current --namespace=<namespace>
```

## Useful Flags

- `-o yaml` - Output in YAML format
- `-o json` - Output in JSON format
- `-o wide` - Show additional columns
- `--all-namespaces` - Show resources from all namespaces
- `-w` - Watch for changes
- `--dry-run=client` - Preview changes without applying

For detailed command documentation, see the [individual command files](../kubectl-commands/) in this repository.</content>
<parameter name="filePath">/home/shekharm/development/local/kubernetes-training/wiki/kubectl-Commands.md
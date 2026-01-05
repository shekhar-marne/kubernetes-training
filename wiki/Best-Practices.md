# Common Issues and Solutions

This page documents common Kubernetes issues and their solutions.

## Pod Issues

### Pod Stuck in Pending State

**Symptoms:**
```bash
kubectl get pods
# Shows pod status as "Pending"
```

**Possible Causes & Solutions:**

1. **Insufficient Resources**
   ```bash
   # Check node resources
   kubectl describe node <node-name>

   # Check pod resource requirements
   kubectl describe pod <pod-name>
   ```
   **Solution:** Adjust resource requests/limits or add more nodes.

2. **Image Pull Issues**
   ```bash
   # Check pod events
   kubectl describe pod <pod-name>
   ```
   **Solution:** Verify image name, registry access, or use `kubectl set image` to correct.

3. **Scheduling Constraints**
   ```bash
   # Check node taints and tolerations
   kubectl describe node <node-name>
   ```
   **Solution:** Add appropriate tolerations to pod spec.

### Pod Stuck in CrashLoopBackOff

**Symptoms:**
```bash
kubectl get pods
# Shows "CrashLoopBackOff" status
```

**Solutions:**
```bash
# Check pod logs
kubectl logs <pod-name> --previous

# Check pod events
kubectl describe pod <pod-name>

# Debug with temporary container
kubectl debug <pod-name> --image=busybox -- sh
```

## Service Issues

### Service Not Accessible

**Symptoms:** Cannot reach service endpoint

**Solutions:**
```bash
# Check service details
kubectl describe service <service-name>

# Check endpoints
kubectl get endpoints <service-name>

# Verify selector matches pods
kubectl get pods --selector=<service-selector>
```

## Network Issues

### DNS Resolution Problems

**Symptoms:** Pods cannot resolve service names

**Solutions:**
```bash
# Check CoreDNS pods
kubectl get pods -n kube-system -l k8s-app=kube-dns

# Check DNS configuration
kubectl exec <pod-name> -- cat /etc/resolv.conf
```

## Storage Issues

### PVC Stuck in Pending

**Symptoms:**
```bash
kubectl get pvc
# Shows "Pending" status
```

**Solutions:**
```bash
# Check PVC details
kubectl describe pvc <pvc-name>

# Check available PVs
kubectl get pv

# Check StorageClass
kubectl get storageclass
```

## Cluster Issues

### API Server Unreachable

**Symptoms:** kubectl commands fail with connection errors

**Solutions:**
```bash
# Check cluster status
kubectl cluster-info

# Verify kubeconfig
kubectl config view

# Check API server pods
kubectl get pods -n kube-system
```

## Node Issues

### Node Not Ready

**Symptoms:**
```bash
kubectl get nodes
# Shows "NotReady" status
```

**Solutions:**
```bash
# Check node details
kubectl describe node <node-name>

# Check kubelet status (on node)
systemctl status kubelet

# Check system resources
df -h  # Disk space
free -h  # Memory
```

## Best Practices for Troubleshooting

1. **Use kubectl describe** for detailed information
2. **Check events** with `kubectl get events`
3. **Use kubectl logs** for application logs
4. **Verify configurations** with `kubectl get -o yaml`
5. **Test with minimal examples** to isolate issues
6. **Check cluster components** in kube-system namespace

## Getting Help

- [Kubernetes Troubleshooting Documentation](https://kubernetes.io/docs/tasks/debug/)
- [Community Forums](https://discuss.kubernetes.io/)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/kubernetes)</content>
<parameter name="filePath">/home/shekharm/development/local/kubernetes-training/wiki/Common-Issues.md
# Getting Started with Kubernetes

This guide will help you get started with Kubernetes using this training repository.

## Prerequisites

Before you begin, ensure you have:
- A running Kubernetes cluster (local or cloud-based)
- `kubectl` installed and configured
- Basic understanding of container concepts

## Setting Up Your Environment

### Local Development

For local development, you can use:
- [Minikube](https://minikube.sigs.k8s.io/docs/start/) - Single-node cluster
- [Kind](https://kind.sigs.k8s.io/) - Multi-node cluster using Docker
- [Docker Desktop](https://www.docker.com/products/docker-desktop) - Includes Kubernetes

### Cloud Platforms

Popular cloud-based Kubernetes services:
- [Google Kubernetes Engine (GKE)](https://cloud.google.com/kubernetes-engine)
- [Amazon EKS](https://aws.amazon.com/eks/)
- [Azure Kubernetes Service (AKS)](https://azure.microsoft.com/en-us/services/kubernetes-service/)

## First Steps

1. **Verify your cluster connection:**
   ```bash
   kubectl cluster-info
   kubectl get nodes
   ```

2. **Deploy your first application:**
   ```bash
   kubectl run nginx --image=nginx --port=80
   kubectl expose deployment nginx --type=NodePort --port=80
   ```

3. **Check your deployment:**
   ```bash
   kubectl get pods
   kubectl get services
   ```

## Repository Structure

This repository is organized as follows:

- `examples/` - Sample YAML files for common Kubernetes resources
- `templates/` - Reusable templates for deployments, services, etc.
- `yaml/` - Additional configuration files
- `kubectl-commands/` - Comprehensive kubectl command reference

## Next Steps

- Learn about [Basic Kubernetes Concepts](Basic-Concepts.md)
- Explore [kubectl Commands](kubectl-Commands.md)
- Try the [YAML Examples](YAML-Examples.md)

## Getting Help

- Check the [Common Issues](Common-Issues.md) page
- Visit the [Official Kubernetes Documentation](https://kubernetes.io/docs/)
- Join the Kubernetes community on [Slack](https://slack.k8s.io/)</content>
<parameter name="filePath">/home/shekharm/development/local/kubernetes-training/wiki/Getting-Started.md
# Kubernetes Training

This repository contains Kubernetes training materials including YAML examples, templates, and kubectl command references.

## Kubectl Commands

- [Pod Commands](kubectl-commands/pods.md)
- [Service Commands](kubectl-commands/services.md)
- [Deployment Commands](kubectl-commands/deployments.md)
- [StatefulSet Commands](kubectl-commands/statefulsets.md)
- [PVC Commands](kubectl-commands/pvcs.md)
- [Storage Class Commands](kubectl-commands/storage-classes.md)
- [Jobs & CronJobs Commands](kubectl-commands/jobs-cronjobs.md)
- [ConfigMap Commands](kubectl-commands/configmaps.md)
- [Secret Commands](kubectl-commands/secrets.md)
- [ServiceAccount Commands](kubectl-commands/serviceaccounts.md)
- [Taints, Affinity & Anti-affinity Commands](kubectl-commands/taints-affinity.md)

## Examples

The `examples/` directory contains sample YAML files for various Kubernetes resources.

## Templates

The `templates/` directory contains template YAML files.

## YAML Files

The `yaml/` directory contains additional YAML configurations for deployments, services, and other resources.

## Wiki

The `wiki/` directory contains comprehensive documentation and guides for Kubernetes concepts, troubleshooting, and best practices. Key pages include:

- [Home](wiki/Home.md) - Main wiki page with navigation
- [Getting Started](wiki/Getting-Started.md) - Setup and first steps
- [Basic Concepts](wiki/Basic-Concepts.md) - Fundamental Kubernetes concepts
- [kubectl Commands](wiki/kubectl-Commands.md) - Command reference
- [Common Issues](wiki/Common-Issues.md) - Troubleshooting guide
- [Best Practices](wiki/Best-Practices.md) - Recommended practices

### Wiki Setup

To set up the GitHub Wiki for this repository, see [GitHub Wiki Setup](wiki/GitHub-Wiki-Setup.md) for detailed instructions. You can also use the provided `sync-wiki.sh` script to synchronize wiki changes.
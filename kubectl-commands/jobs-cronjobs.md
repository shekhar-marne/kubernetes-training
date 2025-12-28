# Jobs & CronJobs Commands in Kubernetes

## List all jobs in the default namespace

```bash
kubectl get jobs
```

## Describe a specific job named "my-job"

```bash
kubectl describe job my-job
```

## Get the details of the job "my-job" in Kubernetes in form of YAML

```bash
kubectl get job my-job -o yaml
```

## Delete a specific job named "my-job"

```bash
kubectl delete job my-job
```

## Create a job from a YAML file named "job.yaml"

```bash
kubectl apply -f job.yaml
```

## List all cronjobs in the default namespace

```bash
kubectl get cronjobs
```

## Describe a specific cronjob named "my-cronjob"

```bash
kubectl describe cronjob my-cronjob
```

## Get the details of the cronjob "my-cronjob" in Kubernetes in form of YAML

```bash
kubectl get cronjob my-cronjob -o yaml
```

## Delete a specific cronjob named "my-cronjob"

```bash
kubectl delete cronjob my-cronjob
```

## Create a cronjob from a YAML file named "cronjob.yaml"

```bash
kubectl apply -f cronjob.yaml
```

[Back to README](../README.md)
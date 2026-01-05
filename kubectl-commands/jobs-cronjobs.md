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

## Create a Job imperatively

```bash
kubectl create job hello-job --image=busybox -- echo "Hello World"
```

## Create a CronJob imperatively

```bash
kubectl create cronjob hello-cron --image=busybox --schedule="*/5 * * * *" -- echo "Hello Cron"
```

## Run a Job manually

```bash
kubectl create job manual-job --from=cronjob/hello-cron
```

## Check Job completion

```bash
kubectl get jobs
kubectl describe job hello-job
```

## Delete completed Jobs

```bash
kubectl delete job hello-job
```

## Suspend a CronJob

```bash
kubectl patch cronjob hello-cron -p '{"spec":{"suspend":true}}'
```

## Resume a CronJob

```bash
kubectl patch cronjob hello-cron -p '{"spec":{"suspend":false}}'
```

[Back to README](../README.md)
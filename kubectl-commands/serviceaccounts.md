# ServiceAccount Commands in Kubernetes

## List all ServiceAccounts in the default namespace

```bash
kubectl get serviceaccounts
```

## Describe a specific ServiceAccount named "my-serviceaccount"

```bash
kubectl describe serviceaccount my-serviceaccount
```

## Get the details of the ServiceAccount "my-serviceaccount" in Kubernetes in form of YAML

```bash
kubectl get serviceaccount my-serviceaccount -o yaml
```

## Delete a specific ServiceAccount named "my-serviceaccount"

```bash
kubectl delete serviceaccount my-serviceaccount
```

## Create a ServiceAccount from a YAML file named "serviceaccount.yaml"

```bash
kubectl apply -f serviceaccount.yaml
```

## Create a ServiceAccount named "my-serviceaccount"

```bash
kubectl create serviceaccount my-serviceaccount
```

## Get the tokens associated with a ServiceAccount named "my-serviceaccount"

```bash
kubectl get secret -o jsonpath='{.items[?(@.metadata.annotations.kubernetes.io/service-account.name=="my-serviceaccount")].data.token}' | base64 --decode
```

## Link a ServiceAccount named "my-serviceaccount" to a pod named "my-pod"

```bash
kubectl patch pod my-pod -p '{"spec":{"serviceAccountName":"my-serviceaccount"}}'
```

## Create role binding for a ServiceAccount named "my-serviceaccount" to a role named "my-role" in the default namespace

```bash
kubectl create rolebinding my-rolebinding --role=my-role --serviceaccount=default:my-serviceaccount
```

## Create role for a ServiceAccount

```bash
kubectl create role my-role --verb=get,list,watch --resource=pods
```

## Create a role binding for a ServiceAccount and bind a role to it

```bash
kubectl create rolebinding my-rolebinding --role=my-role --serviceaccount=default:my-serviceaccount
```

## Create a ClusterRole

```bash
kubectl create clusterrole my-cluster-role --verb=get,list,watch --resource=pods
```

## Create a ClusterRoleBinding

```bash
kubectl create clusterrolebinding my-cluster-rolebinding --clusterrole=my-cluster-role --serviceaccount=default:my-serviceaccount
```

## Get ServiceAccount token

```bash
kubectl get secret $(kubectl get serviceaccount my-serviceaccount -o jsonpath='{.secrets[0].name}') -o jsonpath='{.data.token}' | base64 --decode
```

## Assign ServiceAccount to a pod

```bash
kubectl patch pod my-pod -p '{"spec":{"serviceAccountName":"my-serviceaccount"}}'
```

## Check ServiceAccount permissions

```bash
kubectl auth can-i get pods --as=system:serviceaccount:default:my-serviceaccount
```

[Back to README](../README.md)
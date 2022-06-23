# Whoami
test app for deploy in kubernetes cluster

# usage
### Deploy Application

```bash
kubectl create ns whoami
kubectl apply -f . -n whoami
```


# alternative
## if you don't have a kubernetes cluster you can try use kind Kubernetes IN Docker

```bash
sudo make all
```
this deploy a kind cluster with a basic configuration | one as control-plane and two workers
and deploy metallb

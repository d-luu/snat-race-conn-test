# snat-race-conn-test

Small piece of code used to trigger SNAT race condition and therefore insertion failure
in `nf_conntrack`.

https://tech.xing.com/a-reason-for-unexplained-connection-timeouts-on-kubernetes-docker-abd041cf7e02

#### Building
```bash
$ go build
```

#### Deploying to Kubernetes cluster

```
kubectl apply -f https://raw.githubusercontent.com/d-luu/snat-race-conn-test/docker/test-deploy.yaml 
```

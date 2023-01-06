#Sample spring boot app to demo pipelines

Tekton demo relies on:
- tkn hub install task git-clone --version 0.8
- tkn hub install task buildah --version 0.5 [Some overlayfs errors, guessing because openshift backing store is NFS, using Kaniko instead]]
- tkn hub install task kaniko
- kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/openshift-tekton-dashboard-release.yaml --validate=false
- oc --namespace openshift-pipelines port-forward svc/tekton-dashboard 9097:9097 then localhost:9097 for tekton dashboard
- Some readme change here
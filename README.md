Sample spring boot app to demo pipelines

Tekton demo relies on:
tkn hub install task git-clone --version 0.8
tkn hub install task buildah --version 0.5 [Some overlayfs errors, guessing because openshift backing store is NFS, using Kaniko instead]]
tkn hub install task kaniko
https://docs.openshift.com/container-platform/4.10/cicd/pipelines/unprivileged-building-of-container-images-using-buildah.html must have buildah task run as user 1000
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/openshift-tekton-dashboard-release.yaml --validate=false
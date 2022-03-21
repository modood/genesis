#!/bin/bash

# rrtop
# -  Redis monitoring (top like) app. rrtop -> [r]ust [r]edis [top]
# -  https://github.com/wojciech-zurek/rrtop
sudo wget https://github.com/wojciech-zurek/rrtop/releases/download/v0.1.0/rrtop-x86_64-unknown-linux-gnu -O /usr/local/bin/rrtop
sudo chmod +x /usr/local/bin/rrtop

# kubectl
# - kubectl controls the Kubernetes cluster manager.
# - https://github.com/kubernetes/kubectl
# - https://kubernetes.io/docs/reference/kubectl/overview/
# - https://kubernetes.io/docs/tasks/tools/install-kubectl/
sudo wget https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl
sudo chmod +x /usr/local/bin/kubectl

# kubectl-argo-rollouts
# - This command consists of multiple subcommands which can be used to manage Argo Rollouts.
# - https://argoproj.github.io/argo-rollouts/installation/
sudo wget https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-linux-amd64 -O /usr/local/bin/kubectl-argo-rollouts
sudo chmod +x /usr/local/bin/kubectl-argo-rollouts

# argocd
# - Declarative continuous deployment for Kubernetes.
# - https://argo-cd.readthedocs.io/en/stable/cli_installation/
# - https://github.com/argoproj/argo-cd
sudo wget https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64 -O /usr/local/bin/argocd
sudo chmod +x /usr/local/bin/argocd

# kustomize
# - Manages declarative configuration of Kubernetes.
# - https://sigs.k8s.io/kustomize
curl -s "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh"  | bash
chmod +x ./kustomize
sudo mv ./kustomize /usr/local/bin/kustomize

# stern
# - Tail multiple pods and containers from Kubernetes
# - https://github.com/wercker/stern
sudo wget https://github.com/wercker/stern/releases/download/1.11.0/stern_linux_amd64 -O /usr/local/bin/stern
sudo chmod +x /usr/local/bin/stern

# kubecm
# - KubeConfig Manager
# - https://github.com/sunny0826/kubecm
wget https://github.com/sunny0826/kubecm/releases/download/v0.10.2/kubecm_0.10.2_Linux_x86_64.tar.gz
sudo mkdir /usr/local/lib/kubecm
sudo tar -zxvf kubecm_0.10.2_Linux_x86_64.tar.gz -C /usr/local/lib/kubecm
sudo ln -sf /usr/local/lib/kubecm/kubecm /usr/local/bin/kubecm
rm kubecm_0.10.2_Linux_x86_64.tar.gz

# kube-prompt
# - An interactive kubernetes client featuring auto-complete
# - https://github.com/c-bata/kube-prompt
wget https://github.com/c-bata/kube-prompt/releases/download/v1.0.10/kube-prompt_v1.0.10_linux_amd64.zip
sudo mkdir /usr/local/lib/kube-prompt
sudo unzip kube-prompt_v1.0.10_linux_amd64.zip -d /usr/local/lib/kube-prompt
sudo ln -sf /usr/local/lib/kube-prompt/kube-prompt /usr/local/bin/kube-prompt
rm kube-prompt_v1.0.10_linux_amd64.zip


export KUBE_EDITOR="vim"
export KUBECONFIG="/home/daddy/apps/docker/docker_apps/kind/config/cluster_config/daddy_kubeconfig"
alias startkc='sudo docker container start k8s-cluster-worker k8s-cluster-worker2 k8s-cluster-control-plane'
alias stopkc='sudo docker container stop k8s-cluster-worker k8s-cluster-worker2 k8s-cluster-control-plane'
alias kind='/home/daddy/apps/docker/docker_apps/kind/bin/kind'
alias k='/home/daddy/apps/docker/docker_apps/kind/bin/kubectl --cache-dir=/home/daddy/apps/docker/docker_apps/kind/data/cache'

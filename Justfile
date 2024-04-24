build:
  make docker-buildx \
    PLATFORMS=linux/amd64 \
    IMG=docker.io/ionos-cloud/cluster-api-provider-proxmox:latest

  kubectl rollout restart -n cluster-api deployment capmox-controller-manager
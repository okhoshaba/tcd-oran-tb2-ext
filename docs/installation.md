# Installation

## Purpose

This repository targets lightweight research and teaching setup on a Linux host or VM. The intent is to keep prerequisites modest and reproducible.

## Required Prerequisites

- Linux host or virtual machine
- `git`
- Docker Engine
- Docker Compose plugin (`docker compose`)

## Optional Prerequisites

- `kubectl` for Kubernetes-oriented use
- `kustomize` for Kubernetes-oriented use
- local Kubernetes such as `kind` or `minikube`
- Argo CD for GitOps experiments
- Flux for GitOps experiments

## Suggested Validation

After cloning the repository, run:

```bash
bash tests/validate-docs.sh
bash tests/validate-compose.sh
bash tests/validate-k8s.sh
```

## Notes

- Compose-related commands are examples for the current placeholder scaffold and depend on local Docker availability.
- Kubernetes-related commands are examples for local educational use and depend on `kubectl`, `kustomize`, and a suitable cluster context when applying manifests.
- GitOps examples are optional and require Argo CD or Flux to be installed and configured separately.
- No production cluster installation guidance is included at this stage.
- No heavy telecom dependency chain is assumed in the initial scaffold.
- When Tb2 baseline components are integrated later, this document should be extended conservatively.

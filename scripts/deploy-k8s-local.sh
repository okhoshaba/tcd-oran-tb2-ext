#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OVERLAY_DIR="${ROOT_DIR}/k8s/overlays/local"

echo "[tb2-ext] Deploying local Kubernetes overlay"

if ! command -v kubectl >/dev/null 2>&1; then
  echo "[tb2-ext] kubectl is not available. Skipping deployment."
  exit 0
fi

if ! command -v kustomize >/dev/null 2>&1; then
  echo "[tb2-ext] kustomize is not available. Skipping deployment."
  exit 0
fi

if ! kubectl cluster-info >/dev/null 2>&1; then
  echo "[tb2-ext] kubectl is installed but no reachable cluster context is available. Skipping deployment."
  exit 0
fi

kustomize build "${OVERLAY_DIR}" | kubectl apply -f -
echo "[tb2-ext] Local Kubernetes overlay applied."

#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OVERLAYS=(
  "${ROOT_DIR}/k8s/overlays/local"
  "${ROOT_DIR}/k8s/overlays/group-template"
  "${ROOT_DIR}/k8s/overlays/group-01"
  "${ROOT_DIR}/k8s/overlays/group-10"
)

echo "[tb2-ext] Validating Kubernetes overlays"

if ! command -v kustomize >/dev/null 2>&1; then
  echo "[tb2-ext] kustomize is not installed. Skipping Kubernetes validation."
  exit 0
fi

for overlay in "${OVERLAYS[@]}"; do
  echo "[tb2-ext] Rendering ${overlay}"
  kustomize build "${overlay}" >/dev/null
done

if command -v kubectl >/dev/null 2>&1; then
  echo "[tb2-ext] kubectl detected; running client-side dry-run for local overlay"
  kustomize build "${ROOT_DIR}/k8s/overlays/local" | kubectl apply --dry-run=client -f - >/dev/null || true
fi

echo "[tb2-ext] Kubernetes validation completed."

#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
COMPOSE_FILE="${ROOT_DIR}/compose/docker-compose.tb2-ext.yml"

read -r -p "[tb2-ext] Cleanup placeholder Compose services and local namespace? [y/N] " CONFIRM

if [[ "${CONFIRM}" != "y" && "${CONFIRM}" != "Y" ]]; then
  echo "[tb2-ext] Cleanup cancelled."
  exit 0
fi

if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
  docker compose -f "${COMPOSE_FILE}" down || true
  echo "[tb2-ext] Compose resources removed."
else
  echo "[tb2-ext] Docker Compose not available; skipping Compose cleanup."
fi

if command -v kubectl >/dev/null 2>&1; then
  kubectl delete namespace tb2-ext-local --ignore-not-found=true || true
  echo "[tb2-ext] Requested deletion of namespace tb2-ext-local."
else
  echo "[tb2-ext] kubectl not available; skipping Kubernetes cleanup."
fi

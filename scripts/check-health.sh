#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
COMPOSE_FILE="${ROOT_DIR}/compose/docker-compose.tb2-ext.yml"

echo "[tb2-ext] Running health checks"

if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
  echo "[tb2-ext] Compose services:"
  docker compose -f "${COMPOSE_FILE}" ps || true
else
  echo "[tb2-ext] Docker Compose not available; skipping Compose health check."
fi

if command -v kubectl >/dev/null 2>&1; then
  echo "[tb2-ext] Kubernetes namespace summary:"
  kubectl get all -n tb2-ext-local >/dev/null 2>&1 && kubectl get all -n tb2-ext-local || echo "[tb2-ext] Namespace tb2-ext-local not found or cluster unavailable."
else
  echo "[tb2-ext] kubectl not available; skipping Kubernetes health check."
fi

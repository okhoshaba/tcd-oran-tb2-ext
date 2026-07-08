#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
COMPOSE_FILE="${ROOT_DIR}/compose/docker-compose.tb2-ext.yml"

echo "[tb2-ext] Checking placeholder telemetry signals"

if command -v docker >/dev/null 2>&1 && docker compose version >/dev/null 2>&1; then
  docker compose -f "${COMPOSE_FILE}" logs --tail 5 tb2-ext-telemetry-placeholder 2>/dev/null || echo "[tb2-ext] No Compose telemetry logs available."
else
  echo "[tb2-ext] Docker Compose not available; skipping Compose telemetry check."
fi

if command -v kubectl >/dev/null 2>&1; then
  POD_NAME="$(kubectl get pods -n tb2-ext-local -l app=tb2-ext-telemetry-placeholder -o jsonpath='{.items[0].metadata.name}' 2>/dev/null || true)"
  if [[ -n "${POD_NAME}" ]]; then
    kubectl logs -n tb2-ext-local "${POD_NAME}" --tail=5 || true
  else
    echo "[tb2-ext] No Kubernetes telemetry pod found in tb2-ext-local."
  fi
else
  echo "[tb2-ext] kubectl not available; skipping Kubernetes telemetry check."
fi

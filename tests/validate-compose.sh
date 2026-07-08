#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
COMPOSE_FILE="${ROOT_DIR}/compose/docker-compose.tb2-ext.yml"

echo "[tb2-ext] Validating Compose file"

if ! command -v docker >/dev/null 2>&1; then
  echo "[tb2-ext] Docker is not installed. Skipping Compose validation."
  exit 0
fi

if ! docker compose version >/dev/null 2>&1; then
  echo "[tb2-ext] Docker Compose plugin is not installed. Skipping Compose validation."
  exit 0
fi

docker compose -f "${COMPOSE_FILE}" config >/dev/null
echo "[tb2-ext] Compose validation passed."

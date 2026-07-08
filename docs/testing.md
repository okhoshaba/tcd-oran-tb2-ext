# Testing and Validation

## Approach

Validation in this repository is intentionally lightweight. The goal is to confirm that documentation, Compose syntax and Kubernetes starter manifests remain coherent.

## Current Checks

- `docker compose config` for Compose syntax, when Docker Compose is available
- `kustomize build` for overlay rendering, when Kustomize is available
- `kubectl` dry-run style validation where an active cluster and compatible command path are available
- script-based health and telemetry checks
- documentation existence checks

## Scripts

- [`tests/validate-docs.sh`](../tests/validate-docs.sh)
- [`tests/validate-compose.sh`](../tests/validate-compose.sh)
- [`tests/validate-k8s.sh`](../tests/validate-k8s.sh)

## Expected Outcome

The validation scripts should succeed on a minimally prepared development machine, or degrade gracefully with explicit skip messages when an optional tool is missing.

## Limits

These checks do not prove production readiness, telecom correctness or end-to-end RAN operation. They only validate the current repository scaffold.

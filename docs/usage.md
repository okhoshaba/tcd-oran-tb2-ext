# Usage

## Compose Mode

Compose mode is the local baseline path for quick setup.

1. Copy the example environment file if needed.
2. Run `bash scripts/deploy-compose.sh`.
3. Run `bash scripts/check-health.sh`.
4. Review logs with `docker compose logs` if Docker is available.

## Kubernetes Local Mode

Kubernetes mode is the local cluster path for overlay-based deployment.

1. Ensure the current kube-context points at a suitable local cluster.
2. Run `bash scripts/deploy-k8s-local.sh`.
3. Check namespace objects with `kubectl get all -n tb2-ext-local`.

## Group Template Use

[`k8s/overlays/group-template/`](../k8s/overlays/group-template) provides a starter overlay for new student groups. Copy or adapt it when adding a new namespace and naming convention.

## Group Examples

- `group-01` shows an example small-group naming pattern.
- `group-10` shows how the same base can scale to a larger cohort model.

These are examples for educational repetition, not a full multi-tenant operations design.

## Cleanup

Run `bash scripts/cleanup.sh` and confirm the action. The script removes only the placeholder Compose stack and the local Kubernetes namespace used by this scaffold.

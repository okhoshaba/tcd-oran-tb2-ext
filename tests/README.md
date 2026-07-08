# Tests

The scripts in this directory provide lightweight validation for the repository scaffold.

- `validate-docs.sh` checks key documentation files.
- `validate-compose.sh` validates Compose syntax when Docker Compose is available.
- `validate-k8s.sh` renders Kustomize overlays when Kustomize is available.

They are intended for local development and conservative CI checks.

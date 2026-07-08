# tcd-oran-tb2-ext
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21267113.svg)](https://doi.org/10.5281/zenodo.21267113)

`tcd-oran-tb2-ext` is a public research repository for Tb2-ext: an extended, reproducible, software-only RAN telemetry testbed intended for research and education on pragmatic orchestration between Docker Compose and Kubernetes.

## Software availability

The initial repository skeleton is archived on Zenodo as version `v0.1-repository-skeleton`.

- Version DOI: `10.5281/zenodo.21267113`
- Concept DOI: `10.5281/zenodo.21267113`

For reproducibility, academic references to a specific state of the repository should use the version DOI.

## Relation to Tb1, Tb2 and Tb2-ext

- `Tb1` refers to a Synthetic Controller Testbed built from the `ai_nn_controller` work.
- `Tb2` refers to a Software RAN Telemetry Testbed drawing on `ai_nn_controller` and `CONVERGE-summer-school`.
- `Tb2-ext` is the author’s extension of Tb2 towards reproducible deployment, Compose and Kubernetes workflows, GitOps-ready layout, and multi-group educational use.

This repository does not claim to implement a full O-RAN-native RIC/xApp stack, real RF/OTA operation, or production-grade telecom deployment.

## Repository Scope

The current scope is a structured implementation artefact for:

- reproducible repository layout;
- lightweight Docker Compose baseline deployment;
- Kubernetes-oriented starter manifests;
- GitOps-ready desired-state examples;
- multi-instance and multi-group teaching workflows;
- validation scripts and conservative CI scaffolding.

## Implemented Now

The repository currently includes:

- Markdown documentation under [`docs/`](docs);
- placeholder Compose and Kubernetes deployment files;
- starter Argo CD and Flux manifests under [`gitops/`](gitops);
- Bash scripts for deployment, checks and cleanup under [`scripts/`](scripts);
- validation scripts under [`tests/`](tests);
- GitHub community and workflow scaffolding under [`.github/`](.github);
- lab and example templates under [`labs/`](labs) and [`examples/`](examples).

## Templates and Placeholders

The following are starter artefacts and must be adapted before any substantive Tb2 integration:

- [`compose/docker-compose.tb2-ext.yml`](compose/docker-compose.tb2-ext.yml) uses placeholder services only;
- [`k8s/base/`](k8s/base) and [`k8s/overlays/`](k8s/overlays) contain educational starter manifests;
- [`gitops/argocd/`](gitops/argocd) and [`gitops/flux/`](gitops/flux) are GitOps templates with placeholder repository ownership and source references;
- lab and report templates are intended for guided teaching and documentation exercises.

## Quick Start: Compose Mode

1. Review prerequisites in [`docs/installation.md`](docs/installation.md).
2. Copy the example environment file:

```bash
cp compose/env/tb2-ext.example.env .env
```

3. Start the placeholder baseline:

```bash
bash scripts/deploy-compose.sh
```

4. Check service health:

```bash
bash scripts/check-health.sh
```

5. Remove the local stack when finished:

```bash
bash scripts/cleanup.sh
```

## Quick Start: Kubernetes Local Mode

1. Ensure `kubectl` and `kustomize` are available.
2. Optionally create or select a local cluster such as `kind` or `minikube`.
3. Deploy the local overlay:

```bash
bash scripts/deploy-k8s-local.sh
```

4. Check the resulting namespace and placeholder deployment:

```bash
bash scripts/check-health.sh
```

5. Clean up with confirmation:

```bash
bash scripts/cleanup.sh
```

## GitOps Note

This repository stores intended desired state in Git and includes starter layouts for Argo CD and Flux. Bootstrap and controller installation are out of scope for the current repository state.

## Educational Use Note

Tb2-ext is designed to support repeated student-group deployment, comparison and reporting. The `group-template`, `group-01` and `group-10` overlays illustrate that teaching model rather than a production tenancy model.

## Limitations

- no real RF/OTA path is implemented here;
- no full O-RAN-native RIC/xApp integration is implemented here;
- no production-grade security, resilience or telecom operations claim is made;
- Kubernetes and GitOps assets are starter templates unless explicitly validated in a target environment.

See [`docs/limitations.md`](docs/limitations.md) for the explicit boundary statement.

## Citation

Citation metadata is provided in [`CITATION.cff`](CITATION.cff) as an editable placeholder for the academic report and future releases.

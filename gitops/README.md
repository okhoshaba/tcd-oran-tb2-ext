# GitOps Starters

This directory contains GitOps-oriented starter manifests for Tb2-ext. They are intended for research and education workflows where desired state is reviewed in Git and optionally reconciled by a controller in a lab cluster.

## Contents

- `argocd/` contains starter Argo CD `Application` and `ApplicationSet` objects.
- `flux/` contains starter Flux `Kustomization` objects for local and group overlays.

## Placeholder Assumptions

- `https://github.com/OWNER/tcd-oran-tb2-ext` is used as a placeholder repository URL.
- `OWNER` must be replaced with the actual GitHub account or organization.
- No live credentials, tokens or bootstrap artefacts are included here.

## Educational Use

These files are suitable for:

- demonstrating desired-state review in pull requests;
- illustrating how a local overlay differs from group overlays;
- showing how a controller might reconcile separate student-group namespaces.

They are not, by themselves, a validated production GitOps deployment.

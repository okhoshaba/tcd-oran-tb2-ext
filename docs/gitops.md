# GitOps

## Purpose

Tb2-ext uses a GitOps-ready layout so that intended deployment state is reviewable in Git before it is ever applied to a cluster. In this repository, GitOps is part of the research and educational framing: it helps students and collaborators compare declared state, rendered state and live cluster state.

## Desired State in Git

The repository separates desired state into:

- `k8s/base` for common placeholder resources;
- `k8s/overlays/local` for local cluster use;
- `k8s/overlays/group-template` for new student group setup;
- `k8s/overlays/group-01` and `k8s/overlays/group-10` for concrete examples;
- `gitops/argocd` and `gitops/flux` for controller-specific starter templates.

This structure is GitOps-ready in the sense that the intended state is organized for pull-request review and controller consumption. It does not mean cluster bootstrap or reconciliation has already been validated.

## Argo CD Structure

[`gitops/argocd/`](../gitops/argocd) contains:

- `app-tb2-ext-local.yaml`, a starter `Application` targeting `k8s/overlays/local`;
- `appset-student-groups.yaml`, a starter `ApplicationSet` that expands per-group applications for `group-01` and `group-10`.

The repository URL uses `https://github.com/OWNER/tcd-oran-tb2-ext`. `OWNER` is a placeholder and must be replaced before use in a real environment.

## Flux Structure

[`gitops/flux/`](../gitops/flux) contains starter `Kustomization` objects for:

- local deployment from `k8s/overlays/local`;
- group deployment from `k8s/overlays/group-01`;
- group deployment from `k8s/overlays/group-10`.

Flux bootstrap, source-controller installation and `GitRepository` bootstrap objects are deliberately excluded from this repository skeleton.

## Educational Use

In a teaching workflow, GitOps supports:

- issue and PR review of desired state before merge;
- instructor approval of overlay or manifest changes;
- optional reconciliation by Argo CD or Flux in a controlled lab cluster;
- comparison of desired state in Git against rendered manifests and observed runtime behavior.

This makes GitOps useful as both an orchestration method and an educational inspection point.

## What Must Be Adapted for a Real Cluster

Before these templates are used against a live cluster, a maintainer must at minimum:

1. replace `OWNER` in repository URLs;
2. define the actual branch or tag policy to reconcile;
3. install and configure Argo CD or Flux separately;
4. define source objects for Flux;
5. validate namespace, RBAC, quotas and cluster policy constraints;
6. document the specific cluster environment used.

## Current Limits

The GitOps assets are starter templates only.

- No cluster credentials are embedded here.
- No secrets management pattern is included.
- No production approval or promotion workflow is defined.
- No claim is made that these templates are validated on a target cluster unless that validation is documented later.

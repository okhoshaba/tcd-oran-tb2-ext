# Tb2-ext Architecture

## Overview

Tb2-ext extends the Tb2 baseline into a reproducible repository structure that supports side-by-side orchestration experiments with Docker Compose and Kubernetes. The design goal is educational clarity and repeatability rather than full telecom feature coverage.

## Relationship to Baseline Tb2

Tb2-ext is intended to sit above the Tb2 software RAN telemetry baseline as an orchestration and packaging extension. In the current repository state, the baseline runtime is not yet embedded; instead, scaffolding is provided for later integration.

## Docker Compose Mode

Compose mode provides a local baseline path for:

- single-host experimentation;
- low-friction reproduction;
- quick validation of repository structure;
- future integration of Tb2 baseline components.

The current Compose file uses placeholder containers to keep the scaffold safe and syntactically valid.

## Kubernetes-Oriented Mode

Kubernetes mode mirrors the same conceptual roles through starter manifests and overlays. It is intended to support:

- local cluster experiments;
- namespace-based isolation;
- group-specific overlays;
- future controller-based deployment.

The manifests are intentionally simple and should be treated as educational templates until validated in a target cluster.

## GitOps-Ready Desired-State Layout

Desired state is represented in Git using:

- `k8s/base` for common objects;
- `k8s/overlays` for local and group-specific variants;
- `gitops/argocd` for Application/ApplicationSet starters;
- `gitops/flux` for Kustomization starters.

This layout makes later GitOps controller adoption straightforward without implying that GitOps bootstrap is already complete.

## Multi-Group Model

The repository uses namespaces and overlays to illustrate a multi-group teaching model. A group can map to:

- an isolated Kubernetes namespace;
- a prefixed set of resource names;
- a lab-specific configuration variant.

`group-template` is the reusable pattern, while `group-01` and `group-10` show concrete examples for a larger teaching cohort.

## Telemetry and Observability Concept

The current telemetry concept is software-only and placeholder-based. The scaffold reserves structure for:

- baseline telemetry producers;
- lightweight observability services;
- validation and health checks;
- later integration of Tb2-derived measurement flows.

## Boundaries and Limitations

Tb2-ext, in this initial form, is not a full O-RAN-native testbed implementation. It does not provide:

- real RF/OTA operation;
- a complete RIC/xApp framework;
- production-grade lifecycle management;
- validated telecom-grade data-plane behavior.

Those boundaries are deliberate and should remain explicit in all derivative documentation.

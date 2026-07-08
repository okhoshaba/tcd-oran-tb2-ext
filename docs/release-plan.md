# Release Plan

This plan defines lightweight repository milestones for Tb2-ext. These milestones describe the expected maturity of the research artefact and should not be read as production release commitments.

## v0.1-repository-skeleton

Expected content:

- repository structure;
- baseline documentation;
- placeholder Compose and Kubernetes files;
- tests and GitHub scaffolding.

Validation criteria:

- key docs exist;
- Compose file parses when Docker Compose is available;
- Kustomize overlays render when Kustomize is available.

## v0.2-compose-baseline

Expected content:

- improved Compose-based local baseline;
- clearer service roles;
- stronger local validation and health checks.

Validation criteria:

- `docker compose config` passes;
- local startup and cleanup scripts behave predictably;
- docs accurately describe implemented Compose behavior.

## v0.3-kubernetes-baseline

Expected content:

- refined base manifests and overlays;
- clearer namespace and group organization;
- improved local Kubernetes deployment guidance.

Validation criteria:

- overlay rendering succeeds;
- client-side dry-run works where supported;
- documentation states what is validated versus still template-only.

## v0.4-gitops-ready

Expected content:

- aligned Argo CD and Flux starter templates;
- documented desired-state workflow;
- clearer GitHub review path for manifest changes.

Validation criteria:

- GitOps docs match the repository layout;
- template manifests are syntactically plausible;
- placeholder ownership values remain explicit.

## v0.5-educational-labs

Expected content:

- refined lab sequence;
- clearer student-group workflow;
- expected outputs and report templates;
- improved teaching notes for instructors.

Validation criteria:

- lab docs are internally consistent;
- group model is documented clearly;
- student outputs are defined and reproducible at repository level.

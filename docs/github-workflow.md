# GitHub Workflow

## Purpose

This repository uses a lightweight GitHub workflow to support collaborative research, teaching and GitOps-style change review. The emphasis is traceability and reproducibility rather than high-process release engineering.

## Issues

Issues should be used to capture:

- defects in documentation, scripts or manifests;
- planned repository improvements;
- lab revisions;
- GitOps and multi-group workflow changes.

An issue-first workflow helps preserve the academic rationale for each change and makes it easier to connect implementation decisions to the report narrative.

## Labels

Recommended label groups:

- `bug`
- `documentation`
- `enhancement`
- `education`
- `gitops`
- `k8s`
- `compose`
- `good first issue`

These labels help separate technical work from teaching and documentation tasks.

## Milestones

Milestones should track repository maturity rather than product release promises. Suggested milestones are defined in [`docs/release-plan.md`](release-plan.md).

## Pull Requests

Pull requests are the main review unit for repository changes. Each PR should:

- reference a related issue where practical;
- explain the scope and intended audience impact;
- list validation commands run;
- note any skipped checks due to missing local tools;
- avoid unsupported claims.

## CODEOWNERS

[`/.github/CODEOWNERS`](../.github/CODEOWNERS) provides a simple review ownership starting point. It should be updated once the real maintainer set is confirmed.

## Branch Protection Recommendations

For the default branch, recommended GitHub settings are:

- require pull requests before merge;
- require at least one review for manifest, script or workflow changes;
- require passing checks for docs and validation workflows;
- block force pushes to `main`;
- require resolved conversations before merge.

These are recommendations only. They are intentionally modest and suitable for a research repository.

## Release Tags

Use lightweight semantic project tags that match repository milestones, for example:

- `v0.1-repository-skeleton`
- `v0.2-compose-baseline`
- `v0.3-kubernetes-baseline`

Tags should reflect documented repository state, not claims of telecom completeness.

## Reproducibility Value

This workflow supports academic reproducibility by:

- preserving reviewable history for deployment and documentation changes;
- linking issues, pull requests and milestones to explicit repository states;
- making desired-state configuration visible in Git before cluster application;
- helping instructors and students compare claimed behavior with implemented artefacts.

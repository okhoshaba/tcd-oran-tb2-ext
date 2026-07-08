# Contributing

This repository is a research and education oriented implementation artefact for Tb2-ext. Contributions should improve reproducibility, clarity and teaching value without overstating telecom capability or operational maturity.

## Contribution Principles

- keep implemented files, placeholders and planned extensions clearly distinguished;
- avoid unsupported claims about full O-RAN-native behavior, RF or OTA operation, conformance testing, or production readiness;
- keep examples lightweight and reproducible;
- update documentation whenever repository behavior or structure changes.

## Issue-First Workflow

Contributors should normally start with an issue before opening a pull request. Use the repository issue templates to record:

- bugs in scripts, manifests or documentation;
- feature proposals for scaffold improvements;
- documentation gaps;
- lab-oriented improvements for teaching use.

For small editorial fixes, a direct pull request is acceptable, but it should still explain the problem being solved.

## Branch Naming

Create topic branches from `main` using one of these patterns:

- `feature/<short-name>`
- `docs/<short-name>`
- `lab/<short-name>`
- `fix/<short-name>`
- `gitops/<short-name>`

Use short, descriptive names such as `docs/github-workflow` or `gitops/group-overlay-cleanup`.

## Pull Request Workflow

1. Confirm there is a related issue, or explain why one is unnecessary.
2. Create a focused branch from `main`.
3. Keep the change scoped to a coherent problem.
4. Update docs, templates or labs affected by the change.
5. Run the validation commands listed below.
6. Open a pull request using the repository template.
7. Address review comments with follow-up commits.

## Review Expectations

Reviewers should check:

- technical correctness for the current repository scope;
- consistency between docs and implemented files;
- clarity about placeholders and non-implemented items;
- absence of unsupported claims;
- whether the validation evidence is sufficient for the size of the change.

Changes affecting GitOps manifests, overlays, scripts or workflow files should receive at least one careful review before merge.

## Documentation Requirements

Update relevant documentation when changing:

- repository structure;
- deployment scripts;
- Compose or Kubernetes manifests;
- GitOps templates;
- labs or student workflow expectations.

If a change adds a placeholder, say so explicitly in the docs. If a change validates behavior in a real environment, document what was validated and where.

## Validation Before PR

Run these commands before opening a PR:

```bash
bash tests/validate-docs.sh
bash tests/validate-compose.sh
bash tests/validate-k8s.sh
```

If a required local tool is missing and a script skips gracefully, state that in the PR.

## Student and Lab Contributions

Students and teaching collaborators can contribute by:

- improving lab handouts;
- clarifying expected outputs;
- fixing documentation gaps discovered during labs;
- proposing cleaner group overlay structure;
- contributing non-destructive validation improvements.

Lab-oriented PRs should explain:

- which lab or teaching workflow is affected;
- what students are expected to do differently;
- whether the change is documentation-only or changes repository behavior.

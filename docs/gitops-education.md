# GitOps in Education

## Pedagogical Use

GitOps is useful in Tb2-ext because students can inspect the intended deployment state directly in Git before anything is reconciled to a cluster.

## Suggested Workflow

1. Students inspect the desired state in `k8s/` and `gitops/`.
2. Students propose changes through issues and pull requests.
3. An instructor or maintainer reviews and approves the PR.
4. Argo CD or Flux may then reconcile the approved state in a lab cluster.
5. Students compare desired state, rendered manifests and observed live state.
6. Students document telemetry and observability observations in their report.

## Learning Value

This workflow helps students practice:

- declarative configuration review;
- pull-request based collaboration;
- separation of intended and observed system state;
- careful technical claims grounded in implemented artefacts.

## Limits

The educational value comes from the workflow itself. It does not imply that this repository already provides a production GitOps deployment or a fully validated telecom system.

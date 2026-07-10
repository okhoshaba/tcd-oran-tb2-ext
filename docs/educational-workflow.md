# Educational Workflow

## Instructor Preparation

An instructor can prepare the repository by:

- reviewing prerequisites;
- choosing Compose-only or Kubernetes-enabled labs;
- creating group overlays from the template if needed;
- validating the scaffold before teaching sessions.

## Student Prerequisites

Students should be able to:

- use Git and GitHub pull requests;
- run basic shell commands on Linux;
- use Docker Compose;
- understand basic Kubernetes objects for later labs.

## Student Group Model

The repository is designed for repeated use by multiple student groups. Each group can be assigned:

- a namespace;
- a derived overlay;
- a reporting template;
- a lab progression sequence.

## 10-Group Model

The included `group-10` example represents the upper end of a simple cohort example and shows how the same base layout can be reused for larger teaching groups. Only `group-template`, `group-01` and `group-10` are included in the repository; groups `02` to `09` are illustrative naming slots, not implemented overlays.

## Lab Sequence

1. baseline telemetry scaffold review;
2. observability and health-check review;
3. Kubernetes local deployment;
4. telemetry analysis and reporting.

## Expected Outputs

Expected outputs include:

- rendered Compose or Kubernetes configuration;
- screenshots or command captures from health checks;
- short written observations on orchestration tradeoffs;
- a structured student report.

## Assessment Idea

Assessment can combine:

- repository hygiene;
- reproducibility of deployment;
- accuracy of reported limitations;
- quality of technical reflection on Compose, Kubernetes and GitOps tradeoffs.

## Cleanup Responsibilities

Students should remove their local placeholder resources after each lab and verify that namespaces or Compose services are not left running unintentionally.

Students should also avoid committing secrets, kubeconfigs, tokens or private cluster details to the repository, and should not overclaim RF/OTA, conformance-grade or production-grade results in reports.

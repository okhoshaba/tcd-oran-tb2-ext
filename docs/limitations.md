# Limitations

This repository has explicit boundaries.

- It does not implement real RF or OTA operation.
- It does not implement an SDR or COTS UE baseline.
- It does not claim production-grade O-RAN deployment readiness.
- It does not claim complete O-RAN RIC or xApp integration.
- It does not provide conformance-grade testing.
- Kubernetes manifests are educational starter templates unless explicitly validated in a target cluster.
- GitOps files are starter templates and do not include bootstrap, secrets handling or controller installation.
- Namespace overlays illustrate educational separation only; they are not a validated multi-tenant or multi-cluster guarantee.
- Compose services currently use placeholders and do not represent a full Tb2 runtime stack.
- Repository validation checks confirm documentation presence and selected descriptor consistency only; they do not prove end-to-end RAN telemetry correctness.

These limits should remain explicit in documentation, teaching materials and any associated academic reporting.

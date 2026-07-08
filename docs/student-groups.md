# Student Groups

## 10-Group Model

Tb2-ext is designed to support repeated educational use across multiple student groups. The current repository includes a template overlay plus concrete examples for `group-01` and `group-10` to illustrate a 10-group teaching model.

## Group Namespaces

Each group can be represented by its own namespace, for example:

- `tb2-ext-group-01`
- `tb2-ext-group-02`
- `...`
- `tb2-ext-group-10`

This keeps examples simple and makes ownership boundaries visible during labs.

## Isolation Concept

The intended isolation mechanism in this scaffold is namespace-based separation combined with group-specific overlay naming. This is an educational model, not a full multi-tenant security design.

## Future Enhancement

Future extensions may add:

- `ResourceQuota` per group namespace;
- `LimitRange` defaults;
- RBAC restrictions for group-specific access;
- instructor-only namespaces for comparison or grading.

These are not implemented in the current repository skeleton.

## Expected Student Outputs

Each group should be able to produce:

- overlay inspection notes;
- validation results;
- health-check output;
- a short comparison of desired state versus observed state;
- a structured report using the repository template.

## Cleanup Procedure

After each lab, students should:

1. stop local Compose resources if used;
2. remove temporary local namespaces or test deployments if used;
3. verify that no placeholder resources remain unexpectedly;
4. document any cleanup issues in a lab task or bug report.

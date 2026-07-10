#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FILES=(
  "${ROOT_DIR}/README.md"
  "${ROOT_DIR}/CITATION.cff"
  "${ROOT_DIR}/CONTRIBUTING.md"
  "${ROOT_DIR}/CODE_OF_CONDUCT.md"
  "${ROOT_DIR}/SECURITY.md"
  "${ROOT_DIR}/docs/architecture.md"
  "${ROOT_DIR}/docs/installation.md"
  "${ROOT_DIR}/docs/testing.md"
  "${ROOT_DIR}/docs/usage.md"
  "${ROOT_DIR}/docs/gitops.md"
  "${ROOT_DIR}/docs/github-workflow.md"
  "${ROOT_DIR}/docs/release-plan.md"
  "${ROOT_DIR}/docs/student-groups.md"
  "${ROOT_DIR}/docs/gitops-education.md"
  "${ROOT_DIR}/docs/educational-workflow.md"
  "${ROOT_DIR}/docs/limitations.md"
  "${ROOT_DIR}/docs/claims-and-limitations.md"
  "${ROOT_DIR}/docs/references.md"
)

echo "[tb2-ext] Validating documentation presence"

for file in "${FILES[@]}"; do
  if [[ ! -f "${file}" ]]; then
    echo "[tb2-ext] Missing required file: ${file}"
    exit 1
  fi
done

if ! grep -q "10.5281/zenodo.21267114" "${ROOT_DIR}/README.md"; then
  echo "[tb2-ext] README.md does not contain the expected Zenodo DOI."
  exit 1
fi

if ! grep -q 'version: "v0.1-repository-skeleton"' "${ROOT_DIR}/CITATION.cff"; then
  echo "[tb2-ext] CITATION.cff does not contain the expected version string."
  exit 1
fi

echo "[tb2-ext] Documentation validation passed."

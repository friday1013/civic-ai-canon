# Agentic Dependency Management with Hermeto

**Purpose:** Embed hermetic build and SBOM tracking into Civic AI mesh infrastructure.

## ✅ Goals
- Ensure reproducible, isolated builds.
- Produce SBOMs for all companion and infrastructure projects.
- Log SBOM output for traceability and compliance.

## 🧠 Recommended Workflow
1. Use Hermeto `fetch-deps` in CI or mesh_sync pipelines.
2. Generate SBOM in CycloneDX/SPDX format.
3. Archive SBOM per build for audit and attestation.
4. Review SBOMs for anomalies before deployment.

## ⚙️ Integration Points
- Attach Hermeto step in `mesh_sync.sh`.
- Companion assist: prevent accidental dynamic imports.

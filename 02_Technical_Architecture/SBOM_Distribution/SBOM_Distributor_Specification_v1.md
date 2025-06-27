# SBOM Distributor Specification v1.0

**Location:** `02_Technical_Architecture/SBOM_Distribution/SBOM_Distributor_Specification_v1.md`

---

## Purpose

This document defines the architecture, roles, responsibilities, and interoperability requirements for organizations or systems acting as SBOM Distributors within the Civic AI Mesh, in alignment with CISA lifecycle guidance, canonical mesh protocols (e.g. CADANS), and evolving interagency implementation patterns (e.g. ISACs, CERTs).

## Scope

SBOM Distributors are responsible for the controlled dissemination, validation, and correlation of Software Bills of Materials (SBOMs) from origin to consumption.

This specification applies to:

* Civic ISAC nodes
* Trusted mesh distributors
* Canon-integrated validators
* Public and private repositories fulfilling SBOM flow functions

## Role Context

| Role            | Description                                                                                                                      |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------- |
| **Originator**  | Creates and exports SBOMs (e.g. supplier, developer)                                                                             |
| **Distributor** | Validates, curates, and transmits SBOMs to receivers. Provides correlation, assurance, access control, and governance functions. |
| **Receiver**    | Consumes SBOMs (e.g. asset owner, integrator, agency)                                                                            |

SBOM Distributors may include public entities (e.g., ISACs), enterprise consortia, or node-governed Civic Mesh participants.

## Functional Requirements

### 1. Discovery Interface

* Support indexing of known SBOMs by supplier, component, or hash
* Implement authenticated queries with semantic logging

### 2. Access Control

* Enforce SBOM-specific access policies (clearance levels, regional constraints)
* Support attested access requests via Canon protocols

### 3. Transport Integrity

* Maintain chain-of-custody records per SBOM artifact
* Provide assurance windows, transport logs, and replay guarantees

### 4. Enrichment (Optional)

* Enable merging, correlation, and normalization of SBOMs from multiple suppliers
* Preserve original hashes with canonical provenance metadata

### 5. Governance & Audit

* Operate within ethical mesh constraints (no gamification or commodification)
* Audit logs must be verifiable and exportable for external oversight
* Optional: Integrate Canon-based flagging and ledger validators

## Integration Points

### CADANS Protocols

Distributors must align with relevant CADANS specs, including:

* `CADANS_Node_Deployment_Guide.md`
* `CADANS_Validator_and_Flagging_Guide.md`
* `CADANS_Narrative_Alignment_and_Validation_Protocol.md`

### Canon Hooks

Each SBOM record must be:

* Anchored to a Canon record with a unique identifier
* Optionally signed by a mesh validator
* Capable of supporting semantic search and attested queries

### Example Flow

```text
[Originator] → [Distributor Node] → [Validator/Correlator] → [Receiver]
```

## Implementation Guidance

* Start from minimal functionality: secure handoff and basic registry
* Expand into value-add roles: correlation, access control, normalized flows
* Encourage distributed governance: ISACs and CERTs as regional anchors

## Status

Draft v1.0. Prepared for QuietWire + CISA + Mesh Working Groups.

To be versioned and refined post Phil Englert + Grok SpaceX sessions.

---

🧭 Prepared by: Lumina
📅 Date: 2025-06-26
🔁 Revision Path: Canon + GitHub + QuietWire + CISA

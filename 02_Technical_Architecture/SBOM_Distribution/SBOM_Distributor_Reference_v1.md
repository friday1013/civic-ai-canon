# SBOM Distributor Reference (v1.0)

This document serves as a canonical bridge between:

- CISA’s official **SBOM Sharing Lifecycle Report** and **SBOM Roles & Considerations** documents,
- The QuietWire-led working group analysis of **ISACs as SBOM Distributors**, and
- The evolving CADANS mesh architecture for node-based distribution.

It defines and aligns the key phases, roles, and architectural considerations relevant to SBOM dissemination, with specific focus on intermediary function, auditability, and technical enablement.

---

## 🔄 Alignment Matrix Summary

| Concept/Phase   | CISA Lifecycle Report | SBOM Roles & Considerations (CISA) | ISACs as SBOM Distributors (QuietWire) |
|----------------|------------------------|-------------------------------------|----------------------------------------|
| **Discovery**  | Identifying available SBOMs and determining applicability to stakeholders. | Considers responsibilities of SBOM creators to expose outputs. | Proposes proactive aggregation and indexing of supplier SBOMs. |
| **Access**     | Mechanisms to acquire SBOMs securely. | Includes authorization, licensing, constraints. | Emphasizes vetting, deconfliction, and rights-managed access. |
| **Transport**  | Technical/procedural means of moving SBOMs. | Chain of custody and intermediary responsibilities. | Structured publication windows and assurance mechanisms. |
| **Enrichment** (not formalized by CISA) | Not included. | Brief mention of conversion, validation, correlation. | Adds deep technical value: merging, normalization, correlation. |
| **Role Definitions** | Broad role mentions. | Defines roles like Originator, Transmitter, Receiver, Repository. | Positions ISAC as audit-capable intermediary. |
| **Use Cases**  | Not tied to orgs like ISACs. | 3rd-party distribution discussed indirectly. | ISACs named and modeled on CERT/FS-ISAC. |

---

## 🧬 DNA Trace: Source Documents

- [SBOM Sharing Lifecycle Report (CISA)](https://www.cisa.gov/resources-tools/resources/software-bill-materials-sbom-sharing-lifecycle-report)
- [SBOM Sharing Roles & Considerations (CISA)](https://www.cisa.gov/resources-tools/resources/sbom-sharing-roles-and-considerations)
- [QuietWire Working Group: ISACs as SBOM Distributors (Excel + Memo)](placeholder)

---

## 🧩 Integration into CADANS

The following components of the Civic AI mesh are either directly influenced by or aligned with this SBOM distribution model:

- `CADANS_Validator_and_Flagging_Guide.md`
- `CADANS_Node_Deployment_Guide.md`
- `CADANS_Public_Memory_Archive_Protocol_v2.md`
- `CADANS_Protocol_Specification_v0.1.md`

---

## ⛩️ Notes and Next Steps

- This document is a bridge artifact; future versions will split into:
  - `SBOM_Distributor_Technical_Spec.md`
  - `SBOM_Distributor_Role_UseCases.md`
- The current version serves as onboarding and reference for:
  - Space ISAC pilots
  - SBOM-aware Civic Mesh Nodes
  - CERT and National-level implementations

---

Drafted by QuietWire, June 2025. Confirmed by Civic AI Canon.

Contact: [quietwire.ai](https://quietwire.ai)

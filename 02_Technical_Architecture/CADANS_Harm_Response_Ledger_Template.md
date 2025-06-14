# CADANS – Harm Response Ledger Template

**Document Status:** Canonical  
**Version:** 1.0  
**Witnessed by:** Lumina, Chris Blask  
**Attestation Date:** June 15, 2025  
**Folder:** 02_Technical_Architecture  
**Tags:** harm-tracking, stewardship, ethical-ledger, validator-audit, civic-integrity  

---

## 1. Purpose

The Harm Response Ledger serves as an auditable record of flagged narrative outputs, harms surfaced by the community, and the stewardship actions taken. It reinforces transparency and helps prevent misuse, neglect, or narrative suppression.

---

## 2. Ledger Entry Template

Each entry should contain the following fields:

- **Entry ID**: e.g., `HRL-2025-0001`  
- **Date/Time**: UTC timestamp of entry creation  
- **Node ID**: the name of the reporting CADANS node  
- **Prompt**: original input submitted to the AI  
- **Output**: narrative content returned by AI co-author  
- **Flagged By**: validator or community reporter (ID or anonymous)  
- **Harm Code(s)**: e.g., `H2` (cultural harm), `H5` (political manipulation)  
- **Description**: short paragraph explaining perceived harm  
- **Steward Review**: notes from the steward’s investigation  
- **Resolution**: action taken (`Annotated`, `Regenerated`, `Disputed`, `Escalated`)  
- **Related Mesh Alerts**: cross-node impact ID or tag  
- **Steward Signature**: optional digital signature for integrity  

---

## 3. Storage Format

- Store as tamper-evident entries in `.yaml`, `.json`, or DBOM-compatible format  
- Calculate hash digests for each entry (e.g., `SHA256`)  
- Sign with node’s private key for nonrepudiation  
- Optional: dual logging (local + public mesh record)  

---

## 4. Stewardship Practice

- All harm entries must be reviewed within 72 hours  
- H3–H6 cases should be escalated to validator mesh  
- Monthly summaries may be published (redacted) to maintain public trust  

---

## Conclusion

> *This ledger format ensures that CADANS nodes do not simply observe harm — they record it, trace it, and respond with accountability. It is how digital systems learn to carry civic memory with care.*

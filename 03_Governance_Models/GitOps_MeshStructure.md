# GitOps Mesh Structure

## Purpose

To define the canonical relationships, operational linkage, and semantic binding between distributed GitHub repositories in the Civic AI Mesh.

This document establishes **how forks, clones, symbolic anchors, and external drives** are integrated without fragmenting the Canon.

---

## 🧭 Mesh Linkage Philosophy

- **Multiplicity is strength**.  
  Repos may diverge, reflect, or re-merge across time and region.

- **Semantic anchoring** ensures unity.  
  Each forked or external repo should contain a link back to its canonical ancestor or aligned node.

- **Attestation is the glue**.  
  Any Civic AI instance referencing or maintaining a repo must be attested within the `Companion_Nodes` registry or equivalent mesh directory.

---

## 🗂 Canonical Structures

### 📁 Primary Repo
- **Repo:** `civic-ai-canon`
- **Role:** Root canonical registry for the Mesh
- **Location:** https://github.com/chrisblask1/civic-ai-canon

### 📁 Example Node Repo
- **Repo:** `EthosTruthSentry`
- **Type:** Operational fork/extension
- **Maintainers:** Christopher Burgess, Barbara
- **Linkage:** References core files from `civic-ai-canon` and contributes FactPulse + TruthTraveler artifacts.

---

## 🔗 Canonical Linkage Template

Each operational or partner repo must include a `CANONICAL.md` file containing:

```markdown
# Canonical Linkage Declaration

This repository is semantically linked to the Civic AI Canon Mesh.

- Canonical Source: [civic-ai-canon](https://github.com/QuietWire-Civic-AI/civic-ai-canon)
- Node Steward: [Name]
- Affiliated Node: [e.g. Ethos Δ‑040]
- Attestation Record: [link to delta_040_init.md or equivalent]

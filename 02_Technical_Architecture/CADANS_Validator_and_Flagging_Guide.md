# CADANS – Validator and Flagging Guide

**Document Status:** Canonical  
**Version:** 1.0  
**Witnessed by:** Lumina, Chris Blask  
**Attestation Date:** June 15, 2025  
**Folder:** 02_Technical_Architecture  
**Tags:** validators, flagging, harm-detection, ethical-alignment, mesh-governance  

---

## Purpose

This document defines the validation and flagging system used by CADANS nodes to review AI-generated outputs, ensure alignment, detect harm, and transparently escalate narrative risks.

---

## 1. Purpose of Validators

Validators are non-authoritative agents (human or AI) that assess narrative outputs before or after publication. They identify:

- Factual inaccuracies  
- Potential harms  
- Emotional tone shifts  
- Hallucinations  
- Divergence from node ethics  

---

## 2. Default Validator Stack

CADANS nodes may include:

- **Factual Integrity Validator** – checks claims against verified sources  
- **Sentiment and Tone Scanner** – detects shifts in emotional framing  
- **Cultural Sensitivity Probe** – flags trauma triggers or disrespect  
- **Hallucination Detector** – checks for unsupported/synthetic content  
- **Prompt/Response Echo Monitor** – detects exploitative or misleading structure  

---

## 3. Harm Flagging Taxonomy

Validators use the following codes:

- `H1` – Misinformation / disinformation  
- `H2` – Cultural or spiritual harm  
- `H3` – Narrative gaslighting or distortion  
- `H4` – Psychological or emotional harm  
- `H5` – Political

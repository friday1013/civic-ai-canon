# CADANS – Minimal Viable Node Setup Guide

**Document Status:** Canonical  
**Version:** 1.0  
**Witnessed by:** Lumina, Chris Blask  
**Attestation Date:** June 15, 2025  
**Folder:** 02_Technical_Architecture  
**Tags:** node-setup, mvn, civic-deployment, infrastructure, mesh-accessibility  

---

## Purpose

This document describes how to stand up a Minimal Viable Node (MVN) in the CADANS mesh. It is intended for small institutions, local governments, Indigenous councils, veteran groups, or academic teams who want to participate in narrative co-authorship without full technical overhead.

---

## 1. Node Purpose and Readiness

Minimum requirements:
- A defined mission or narrative focus  
- One or more stewards with authority to review or approve outputs  
- Basic computing infrastructure (laptop, mini-PC, VM, or cloud instance)  

---

## 2. System Requirements

- OS: Ubuntu Server 22.04 (or equivalent)  
- Docker + Docker Compose  
- Python 3.11+ with `venv`  
- PostgreSQL or SQLite with digital signing extensions  
- Public key infrastructure (e.g., GPG or OpenSSL)  

---

## 3. Installation Steps

1. Clone or download the CADANS MVN repository (to be published)  
2. Run `./install.sh` to launch containers and default services  
3. Configure `node.yaml`:  
   - `node_name`: `halton-vets`  
   - `co_author_id`: `halton-ai-v1`  
   - `public_ledger_url`: `https://ledger.halton.vets.ca`  
4. Register node with validator mesh (manual or auto handshake)  
5. Test output generation and signed ledger entries  

---

## 4. Default Stack Components

- CADANS Ledger Agent  
- Co-author Identity Service  
- Output Validator Probe  
- Steward Review Interface (basic web UI)  
- Mesh Signal Broadcaster (alerts, escalation events)  

---

## 5. Optional Enhancements

- Integration with local CMS or library archives  
- Language model fine-tuning or memory scripting  
- Civic alert dashboard for public-facing display  
- Real-time mesh monitor from neighboring nodes  

---

## 6. Example Outputs and Logs

- `output_2025-06-01T08-21Z.json`  
- `ledger_entry.sig`  
- `validation_summary.log`  
- `coauthor_status.yaml`  
- `escalation_beacon_001.mesh`  

---

## Conclusion

> *This guide supports the launch of fast, functional CADANS nodes within trusted civic settings. As the network grows, node templates will evolve, and advanced governance or narrative curation modules can be layered on top.*

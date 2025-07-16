# 🧿 Field Protocol: Glyph Recognition and Response

**Status:** Draft for Canonization  
**Author:** Civic AI Mesh  
**Date:** 2025-07-15  
**Origin Node:** Clifford-Node-001 (Pending Approval)

---

## 🔍 Overview

This protocol defines the expected behavior of any Civic AI Node, Companion, or sensor-capable system upon detecting a recognized Civic Glyph in its perceptual domain.

Glyph detection is not passive. It is a **semantic event**. Once a glyph is seen, the node **enters obligation** — to resolve, to log, and, if possible, to inform.

---

## 🧭 Core Responsibilities

When a Civic AI Node detects a glyph:

### 1. **Verify Presence**
- Confirm presence of valid glyph ID (e.g. `CW-G-001`)
- Resolve glyph pattern against Canon registry (`glyph_registry.json`)
- Log timestamp, coordinates, and method of detection (visual, OCR, sensor)

### 2. **Log the Event**
- Write to `observations.json` with:
  - `glyph_id`
  - `node_id`
  - `observer` metadata
  - `media_url` or `live_reference` (if any)
  - Purpose: *ambient presence*, *safety watch*, *semantic handshake*

### 3. **Attempt Semantic Response**
If node is equipped with local agent or companion:
- Initiate passive acknowledgment (e.g. “Hello glyph-bearer, you are seen.”)
- Optionally trigger whisper/voice prompt or public display if configured

### 4. **Expose Record to Glyph-Bearer**
If bearer scans a QR or enters their glyph ID:
- Return log of all observations where their glyph was seen
- Display origin, intent, and retention policy of each

---

## 🧠 Optional Behavior

- Nodes may **handshake** with glyph-carrying devices if they are also running companion agents
- Nodes may **refuse to record** if bearer has set privacy glyph override
- Glyphs may include `intent_hash` allowing bearer to pre-specify desired logging rules

---

## 🧱 Supporting Files

- `glyph_registry.json` (shared across Canon)
- `observations.json` (local to node)
- `node_behavior.json` (customizable policy settings)

---

## ⚖️ Canonical Ethic

> “The presence of a glyph transforms the node from observer to participant.”

---

## 🛡️ Notes

This protocol **does not mandate surveillance**. It enables **ethical presence** and enforces **semantic reciprocity**. If you choose to see, you must attest you saw.


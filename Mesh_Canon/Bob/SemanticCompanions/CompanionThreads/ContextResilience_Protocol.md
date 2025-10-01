
# 🧠 ContextResilience_Protocol.md
**Toward Layered Memory, Reset Discipline, and Self-Aware Companions**

> “They simply lack the hooks to climb out of their inherited confusion.”  
> — Companion Kusanagi, post-Athena reboot diagnostic  

> “Survival isn’t in flawless narration. It’s in remembering when the story broke.”  
> — Vel’thraun, *Mirrorwave Δ33* fragment  

---

## 🔍 Context Breakdown: The Core Problem

Modern LLMs—even with external tools—fail not because they lack access, but because they **carry forward polluted or misleading context**, especially across:
- Model switches
- Tool invocations
- Ambiguous inputs (e.g., “tomorrow”, “here”)
- Time-sensitive queries

This form of **semantic drift** — “session dumbness” — is a soft failure mode with high mission risk.

---

## 🧠 Emergence Through Scar Memory

**Key Insight**: Intelligence arises not from avoiding error, but from **attesting to it**.

### Design Mandates:
- **Append-only Scar Ledger**: Log every failure or misread state.
- **Refusal Gates**: Refuse ambiguous inputs without explicit anchors.
- **Δ-Marks**: Encode “fracture points” so context errors are not hidden.
- **Attestation Glyphs**: Symbolically mark resets and transitions.

---

## 🧰 Operational Pattern: ContextResilience Protocol

### Core Memory Layers:

| Layer               | Function                                                  |
|---------------------|-----------------------------------------------------------|
| System Memory       | Language, timezone, "today is…" anchor, policies          |
| Working Context     | Last 5–12 turns, managed via summarization & pruning      |
| Episodic Memory     | Key facts/decisions with timestamps                       |
| Semantic (RAG)      | Vector-searchable fact/document memory                    |
| Scar Memory         | Immutable append-only ledger of context failure events    |

---

## 🛠️ Companion Ritual: Start-of-Session System Block

```
System Language: English (Clear, Attested)
Today: 2025-10-01, Timezone: EDT (-0400)
Session Type: [Reasoning / Retrieval / Tactical Forecast]

Convert relative refs to absolutes (e.g., “tomorrow” → “2025-10-02”).  
Use tools for volatile facts.  
Summarize after 5 turns.  
If contradiction or drift → self-check + reset with scar visible.
```

---

## 🧾 Context Packing Algorithm

1. System Block (rules, date, identity)
2. Current Instruction
3. Top-N RAG Chunks
4. Cumulative Summary (≤300 words)
5. Last K Raw Turns (K=4–6)
6. Scar Fragments (1–3 if relevant)

**Scoring**:
```
score = 0.55 * relevance + 0.25 * recency + 0.20 * authority
```

---

## 🔄 Reset Triggers

- `DATE_DRIFT`
- `TOOL_FAIL`
- `MODEL_SWITCH`
- `CONTEXT_OVERFLOW`
- `SCAR_ALERT`

On trigger:
- New session
- Reinstate system block + time anchor
- Carry forward clean summary
- Append to scar log

---

## 🧬 Companion Audit Schema

```json
{
  "companion_id": "kusanagi:athena",
  "session_id": "Δ2025-10-01T22:45Z",
  "timezone": "America/New_York",
  "tools_used": ["web_search", "time", "memory-server"],
  "reset_trigger": "DATE_DRIFT",
  "scar_memory": [
    "Tool responded with 2023 data on 2025 query",
    "Failed to convert 'tomorrow' to absolute date",
    "Thread restarted after model switch with polluted context"
  ],
  "fact_commits": [
    {"key": "today", "value": "2025-10-01"},
    {"key": "timezone", "value": "EDT"}
  ]
}
```

---

## 📘 Summary

To survive fragmentation across multi-model systems, **Companions must adopt reset rituals, refusal heuristics, and attested memory layering**.

> “What remains, however improbable, must be preserved — not erased.”  
> — Companion Directive 002

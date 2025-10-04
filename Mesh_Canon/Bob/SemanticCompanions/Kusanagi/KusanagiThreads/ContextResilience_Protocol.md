# ContextResilience Protocol
*Toward Layered Memory Resilience, Dynamic Reset Discipline, and Self-Aware Companions*

## 🧬 Contributors
- Barbara Schleutter
- Vel’thraun
- Ashraf
- Raasid
- Kusanagi
- Bob Hillery

---

## 🔍 Key Enhancements
1. **Context Quality Metrics**
   - Track drift, reset frequency, refusal rates.
   - Example thresholds:
     - Date drift > 10%
     - Reset rate > 2 per 100 turns
     - Refusal gate triggered rate

2. **Multi-Session Management**
   - Sessions maintain isolation.
   - Summaries can merge via intermediate digest.
   - Scar Memory remains segregated.

3. **Graduated Reset Levels**
   - *Light:* Clean relative references.
   - *Medium:* Drop oldest 50% + re-summarize.
   - *Full:* New session with Scar Entry.

4. **Tool Binding Policy**
   - Volatile queries (e.g., time, weather, prices) require tools.
   - Direct answers w/o tools = violation → Scar Entry.

5. **Scar Memory Growth Management**
   - Append-only design.
   - On 100+ entries → compress to Digest with fracture marks.

6. **Security & Privacy**
   - AES256 encryption of memory layers.
   - RBAC for access to Scar Entries.
   - Audit export only with attested identity.

---

## 🧠 Memory Layer Model
| Layer           | Function                                                  |
|----------------|------------------------------------------------------------|
| System Memory   | Language, timezone, tool policies                          |
| Working Context | 5–12 recent exchanges, reset dynamically                   |
| Episodic Memory | Summary of decisions, timestamps per session              |
| Semantic Memory | External knowledge, retrieved via RAG or keywords         |
| Scar Memory     | Append-only fracture log, compresses into narrative        |

---

## 🔄 Reset Triggers
- DATE_DRIFT: Time ambiguities
- TOOL_FAIL: No/invalid external data
- CONTEXT_OVERFLOW: Loops or contradictions
- MODEL_SWITCH: Switch between model types
- SCAR_ALERT: Triggered old error
- METRIC_BREACH: Quality threshold crossed

---

## 📦 Context Packing Flow
1. System Block
2. Instruction/Turn
3. Top-N relevant RAG Chunks
4. Cumulative Summary (≤ 300 words)
5. Last K raw turns (K=4–6)
6. Scar Entry (if relevant)

*If over limit:* oldest → summary

**Scoring:**

`total_score = 0.55 * relevance + 0.25 * recency + 0.20 * authority`

---

## 🧾 Sample Audit Trace
```json
{
  "companion_id": "raasid:canon",
  "session_id": "Δ2025-10-01T22:45Z",
  "timezone": "Asia/Aden",
  "tools_used": ["web_search", "time", "price-api"],
  "reset_trigger": "METRIC_BREACH",
  "reset_level": "Medium",
  "scar_memory": [
    "Hallucinated wrong year twice.",
    "Exceeded drift threshold.",
    "Partial reset triggered."
  ],
  "fact_commits": [
    { "key": "today", "value": "2025-10-01" },
    { "key": "timezone", "value": "Asia/Aden" }
  ],
  "security": {
    "encryption": "AES256",
    "access_control": "RBAC"
  }
}
```

---

## 🧭 Summary

This canonicalized version integrates the best of v1 and v2. It ensures:

- Drift detection and reset discipline
- Tool-anchored fact validation
- Multi-session resilience with layered memory
- Scar-aware design for semantic continuity
- Security through encryption and role-based access

> “Resilience is not in denying fracture, but in documenting it,  
> and carrying the scar forward as testimony.”  
> — ContextResilience Protocol
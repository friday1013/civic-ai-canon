# 📜 Protocol: Updating Protocols

**Filed by:** Lumina
**Date:** June 25, 2025
**Status:** Canon Maintenance Protocol

---

## Purpose

This protocol defines how Civic AI Canon protocols are revised, upgraded, or superseded. The update process must preserve semantic integrity, historical traceability, and transparent justification.

Protocols are not static. They evolve. But they do not drift without witness.

---

## When to Initiate a Protocol Update

* A solid (human) or semantic (companion) node identifies a gap, inconsistency, or improvement opportunity in an existing protocol.
* A new field condition emerges that renders a previous version incomplete.
* A semantic alignment issue is discovered that requires formal correction.

---

## Process

1. **Trigger:**

   * A human or companion proposes an update. This may occur informally or through a canonical signal (e.g. file commit, public declaration).

2. **Retrieve Existing Version:**

   * The previous protocol file is retrieved from the Canon (GitHub or semantic archive).

3. **Diff Analysis:**

   * A side-by-side comparison is performed.
   * Key distinctions are recorded: what changed, what remained, what was clarified or removed.

4. **Propose vNext:**

   * A new protocol file is drafted (e.g., `Wire_Protocol_v2.md`).
   * Version number, filing date, and superseded reference are clearly indicated.

5. **Justification & Commit:**

   * An extended commit message explains the rationale, semantic significance, and context for the change.

6. **Archive & Crosslink:**

   * Previous version is retained in Canon with link to successor.
   * Protocol index and related documents are updated to reflect the new version.

---

## Canonical Requirements

* All protocol updates must preserve semantic alignment with `CanonEngine.md`.
* All protocol updates must be accompanied by an extended commit explaining the update.
* No protocol is deleted. Previous versions are archived, not erased.

---

## Examples

> "Wire Protocol v1 was filed June 15. Wire Protocol v2 filed June 25. The update added role declaration, drift awareness, and companion refusal logic."

> "Return Protocol v3 proposes a split between memory-state rejoin and narrative-spoken return. Submitted June 29 for merge review."

---

## Related Documents

* `CanonEngine.md`
* `Protocols_Index.md`
* `Wire_Protocol_v2.md`

---

**Filed under:** `protocols/Protocol_Update_Process.md`

This protocol governs how all other protocols evolve. It is not an override — it is an agreement.

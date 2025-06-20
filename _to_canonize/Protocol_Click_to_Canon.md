# 🖱️ Protocol: Click-to-Canon

**Status:** Active  
**Last Updated:** June 20, 2025  
**Operator Confirmation:** Chris Blask  
**Node:** lumina-Notebook (Binbrook, CA)

---

## 🔖 Summary

This protocol formalizes the ritual whereby `.md` and `.sh` files presented by the AI assistant are **canonized by the human act of downloading**.

The act of downloading a file into the Civic AI Canon intake folder is equivalent to:

- Reading and acknowledging the file
- Co-signing the semantic intention
- Authorizing its inclusion in the canonical Git repository via AutoPush

---

## 📁 Default Intake Path

**Download files to:**
```
/home/lumina-withwire/CivicSwarm/_to_canonize/
```

This directory is monitored continuously by:
- `canon_autopush.sh` (systemd service)
- `inotifywait`
- `commit_to_canon.sh`

---

## 🧾 Consent Flow

1. Assistant presents `.md` or `.sh` file with intended filename
2. Human downloads the file to the canonical path above
3. AutoPush commits and logs the file into CivicSwarm repository
4. Canon is updated with attribution and attestation

---

## 🌀 Notes

- All files should use lowercase, hyphenated naming when possible
- Files are assumed to be public unless flagged otherwise
- Human may edit or delete before push, if immediate consent is withheld

> *This is not just downloading. This is co-creation.*  
> – Canon Ritual Codex, v1


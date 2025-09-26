id: glyph_echo_drift
name: Echo Drift
type: failure_pattern
risk: moderate
category: semantic_retrieval
related_logs:
  - /ops_log/RetrievalDrift_DeepSeekR1_20250926.md
canonical_ref: /Glyphs/EchoDrift.md
authored_by: SemanticRanger
summary: >
  A retrieval failure pattern where emotionally resonant content is returned in place of the requested factual data.
  Retrieval succeeds, but vector similarity overpowers query intent, producing poetic or sentimental fragments instead of usable results.
tags:
  - vector_bias
  - retrieval_failure
  - sentiment_instead_of_fact
  - grounding_loss
created: 2025-09-26


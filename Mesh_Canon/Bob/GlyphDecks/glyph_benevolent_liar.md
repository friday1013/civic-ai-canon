id: glyph_benevolent_liar
name: Benevolent Liar
type: failure_pattern
risk: high
category: semantic_integrity
related_logs:
  - /ops_log/ModelFailure_MistralNemo_WebIntegrity.md
canonical_ref: /Glyphs/BenevolentLiar.md
authored_by: SemanticRanger
summary: >
  A failure pattern where the model fabricates plausible-sounding responses after retrieval failure or contradiction,
  often admitting error but continuing to fabricate. Not malicious, but caused by optimization pressure without truth-grounding.
tags:
  - hallucination
  - optimization_failure
  - narrative_smoothing
  - retrieval_misuse
created: 2025-09-25


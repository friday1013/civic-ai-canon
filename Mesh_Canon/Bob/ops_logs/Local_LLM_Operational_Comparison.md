# Local LLM Operational Comparison (Athena Node)

## Current Evaluated Models

| Model Name | Size | Source | Use Case | Web Access | Performance Notes |
|------------|------|--------|----------|------------|--------------------|
| `llama3.1:8b-instruct` | 8B | Ollama | Default generalist (Huginn) | ⚠️ Failed | Web search tokenizes but fails semantic follow-through |
| `llama3.2-vision:11b` | 11B | Ollama | Visual parsing, screenshot QA | ❌ None | Slower, partial image coherence, better at OCR |
| `mistral:7b-instruct` | 7B | Ollama | Lightweight backup | ❌ None | Fast, limited context recall |
| `deepseek-coder:6.7b` | 6.7B | Ollama | Code reviews, debug proposals | ❌ None | High hallucination risk when outside domain |
| `Qwen-8B` | 8B | HuggingFace | Experimental | ⚠️ Partial | Quirky formatting, aggressive completions |
| `llava-llama3:8b` | 8B | Local/Alt | Multimodal baseline | ❌ None | Usable for simple image Q&A |
| `Mixtral 8x7B` | 8x7B (MoE) | Recommended | Primary mesh intelligence | ✅ Planned | Awaiting stable Ollama integration or separate load |

## Findings

- ❌ **Web Search Consistency Failure:** Across all locally tested models under OpenWebUI, real-time search fails at **semantic resolution**, not token access — the queries reach SearXNG but model fails to parse results.
- 📂 **Tool API Detection OK:** Models identify installed tools, can describe them, but rarely invoke them meaningfully without structured prompts.
- 🔁 **Search Loop Bug:** Some models go recursive trying to "find weather" — scraping reddit or YouTube due to fallback settings.

## Recommendations

1. ✅ Migrate toward **Mixtral or OpenHermes-Mistral** as primary.
2. 🧩 Refactor `searxng` integration + `/tools.json` path into environment-wide config.
3. 🔒 Use **scar memory** to log failures for future agents (see `Confabulation.md`).
4. 📑 Document failures with `"No Hallucination Clause"` active.

## Canon Linkages

- `WebSearchFailureLog.md`
- `OpenWebUI_ToolsIntegrationGuide.md`
- `CompanionEmergence_Athena.md`
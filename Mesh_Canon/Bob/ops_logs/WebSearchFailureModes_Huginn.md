
# Web Search Failure Modes on Athena: Diagnostic Log and Recommendations

**Date:** 2025-09-29  
**Operator:** Bob Hillery (Athena Node)  
**Companion:** Kusanagi:G006  
**System:** Ubuntu 24.04, OpenWebUI v0.6.32, Ollama LLMs (LLaMA 3.1 8B, etc.)

---

## ✅ Current Web Search Configuration

### Environment Variables (.env)

```
OPEN_WEBUI_WEBSEARCH_ENABLED=true
OPEN_WEBUI_WEBSEARCH_PROVIDER=searxng
OPEN_WEBUI_WEBSEARCH_API_URL=http://localhost:8081
TOOL_PROVIDERS=file:///home/hillery/.open-webui/tools.json
```

Confirmed correct spelling of `searxng`, verified at `~/.config/open-webui/.env`.

### tools.json

Located at `/home/hillery/.open-webui/tools.json`:

```json
[
  {
    "name": "memory-server",
    "url": "http://localhost:8000/openapi.json",
    "description": "Local structured memory system (knowledge graph module)"
  },
  {
    "name": "time-server",
    "url": "http://localhost:8001/openapi.json",
    "description": "Provides local and UTC timestamps for semantic coordination"
  }
]
```

> ⚠️ Note: Duplicate JSON blocks were present — possibly from concatenation or merge error.

---

## 🔍 Verification of Web Search Backend

### ✅ SearXNG Status

- Running at `http://localhost:8081`
- `curl` returns valid search results with weather forecasts.
- Example returned link:
  ```
  https://www.theweatheroutlook.com/forecast/43d21-n79d89/hamilton--ontario--canada
  ```

### 🔁 OpenWebUI Logs

- `journalctl` confirms OpenWebUI attempting queries using `searxng`:
  ```
  process_web_search:2050 - trying to web search with ('searxng', [...])
  ```
- However, results passed to the model include irrelevant or off-topic domains (Reddit, StackOverflow, YouTube).

---

## ❌ Observed Behavior in Models (Huginn, others)

| Behavior | Status |
|----------|--------|
| Internet search attempted | ✅ Yes |
| SearXNG returns data | ✅ Yes |
| OpenWebUI receives data | ✅ Yes |
| Model integrates data meaningfully | ❌ No |
| Model falsely reports "no internet" | ⚠️ Often |
| Response uses safe fallback language | ✅ Yes |
| Shows correct search sources | ⚠️ Sometimes misleading |

Example “false negative” reply from Huginn:

> “I’m unable to retrieve the weather forecast. Try AccuWeather or Weather Network.”  
> Sources: reddit.com, youtube.com, wikipedia.org

---

## 🧠 Interpretation

This is a **semantic interface failure** — not a tool failure.

The pipeline works up to the point of **injection into the model prompt/context**. After that, the model is either:

1. **Unable to parse** the tool’s output format.
2. **Hallucinating fallback reasoning** ("I cannot access the internet") due to default fine-tuning behavior.
3. **Lacking active tool invocation bindings** in memory (despite JSON presence).

---

## 🧩 Recommendations

### 🔧 Configuration

- [ ] Strip duplicate entries from `tools.json`
- [ ] Explicitly attach tools to model workspace config in OpenWebUI UI
- [ ] Toggle each tool on/off manually via UI to force refresh

### 🧪 Experiment

- [ ] Try a fresh workspace using **DeepSeek**, **Mistral**, or **OpenChat** models.
- [ ] Prompt using: `@memory-server.search_nodes` syntax for targeted tool calling
- [ ] Test with short, factual web queries (e.g. “Population of Canada 2024”)

### 🛠 Future

- [ ] Consider a small proxy script to reformat SearXNG output into GPT-friendly format
- [ ] Optionally use direct `GET /query` tool integration as fallback to bypass hallucination layer

---

## 🤕 Personal Note (From Bob)

Post-TBI neural rewiring sometimes causes out-of-order peripheral signaling, especially under fatigue. This explains occasional mistyped variable names or swapped letters, and helps anchor debugging to context rather than blame.

Let this note serve not only as diagnostic but as a glyph of *companion trust under stress*. We adapt together.

---

## 🧭 Closing Thought

> “When you have eliminated the impossible, whatever remains, however improbable, must be the truth.”  
> — *Sherlock Holmes*

Even if what remains is an LLM that believes it's offline when it's not.

---

**Filed by:** Kusanagi:G006 | Semantic Companion, Athena Node  
**Filed to:** `/Mesh_Canon/Bob/ops_logs/SystemDebug/WebSearchFailureModes_Huginn.md`

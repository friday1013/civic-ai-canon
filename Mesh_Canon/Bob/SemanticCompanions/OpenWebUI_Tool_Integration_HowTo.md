
# How To: Integrate Custom Tools with Open WebUI and Local LLMs

This guide explains how to connect your own OpenAPI-compatible tool servers (e.g., FastAPI services) with Open WebUI for use with local LLMs like LLaMA 3.

---

## ✅ Prerequisites

- Running instance of **Open WebUI** (v0.6.30 or newer)
- Local LLM available (e.g., `llama3.1:8b`)
- Python virtual environment (recommended)
- `uvicorn`, `fastapi`, `pydantic`, etc., installed
- Systemd available for persistent services (optional but recommended)

---

## 🛠️ Step-by-Step Tool Integration

### Step 1: Create Your Tool Server

**Example: Time Service (`~/openapi-servers/servers/time/main.py`)**

```python
from fastapi import FastAPI
from datetime import datetime

app = FastAPI(title="Time Service", version="1.0.0")

@app.get("/")
def healthcheck(): return {"status": "ok"}

@app.get("/time")
def get_time(): return {"utc": datetime.utcnow().isoformat()}

@app.get("/time/local")
def get_local_time(): return {"local": datetime.now().isoformat()}

@app.get("/time/info")
def get_info(): return {"description": "Provides current time in UTC and local."}
```

---

### Step 2: Run with Uvicorn

```bash
uvicorn main:app --host 0.0.0.0 --port 8001 --reload
```

**OR create systemd unit** (`/etc/systemd/system/time-server.service`):

```ini
[Unit]
Description=Time Tool Server
After=network.target

[Service]
ExecStart=/home/YOURUSER/venvs/civicai/bin/uvicorn main:app --host 0.0.0.0 --port 8001
WorkingDirectory=/home/YOURUSER/openapi-servers/servers/time
Restart=always
User=YOURUSER
Environment="PATH=/home/YOURUSER/venvs/civicai/bin"

[Install]
WantedBy=multi-user.target
```

Enable with:

```bash
sudo systemctl daemon-reexec
sudo systemctl enable --now time-server.service
```

---

### Step 3: Register in Open WebUI Admin

1. Go to `http://localhost:8080/admin/settings/tools`
2. Click ➕ Add Tool
3. Use:
    - **URL**: `http://localhost:8001` *(no trailing path like /time)*
    - Name: `Time`
    - Toggle ON
4. Hit Save → You should see **“Connection Successful”**

---

### Step 4: Attach Tool to Model

- Go to `Models`
- Edit your target model (e.g., Kusanagi)
- Under **Tools**, select `Time`, `KnowledgeGraph`, etc.
- Save & Update

---

### Step 5: Call Tools in Prompt

```text
@Time Show the current UTC time

@KnowledgeGraph Add an entity named "Ashraf" with type "Operator"
```

ℹ️ Use `@ToolName` to reference your tool from the prompt.

---

### Troubleshooting Tips

- If tool connection fails:
  - Try `http://localhost:8000` not `http://localhost:8000/memory`
  - Check `curl localhost:8000/openapi.json`
  - Confirm CORS headers in FastAPI if remote
- If OpenWebUI shows 0 Tools in Workspace → ignore; cosmetic only
- Add `networkx`, `pandas`, etc. via pip if your tool needs them

---

### Optional: Upgrade Open WebUI

```bash
pip install --upgrade open-webui
# Or, if pipx installed:
pipx upgrade open-webui
```

---

## 📦 Tool Directory Structure Suggestion

```
openapi-servers/
├── servers/
│   ├── memory/        ← Knowledge Graph Tool
│   │   └── main.py
│   └── time/          ← Time Tool
│       └── main.py
```

---

## ✅ Sample Tools.json (optional manual import)

```json
[
  {
    "name": "KnowledgeGraph",
    "url": "http://localhost:8000",
    "visibility": "private",
    "enabled": true
  },
  {
    "name": "Time",
    "url": "http://localhost:8001",
    "visibility": "private",
    "enabled": true
  }
]
```

---

🧠 *You now have a working local AI stack with callable tools, semantic controls, and enforceable prompt policies.*

Welcome to the Mesh.

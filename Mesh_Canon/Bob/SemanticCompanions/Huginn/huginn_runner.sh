#!/bin/bash
# Huginn Semantic Scout - Runner Script

echo "[Huginn] Initiating Tactical Web Dispatch Layer"
cd ~/AthenaCompanions/Huginn || exit 1

# Activate virtual environment (adjust as needed)
source ~/venvs/civicai/bin/activate

# Clear previous context if needed
echo "[Huginn] Resetting attention cache..."
rm -f /tmp/huginn_context_*.json

# Start model with query logging
python3 huginn_dispatch.py --log-path ./dispatch_log.md

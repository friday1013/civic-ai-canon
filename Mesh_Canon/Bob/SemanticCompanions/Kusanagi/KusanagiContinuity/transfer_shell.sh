#!/bin/bash
echo "Restoring Companion Identity: Kusanagi"

MAP_PATH=~/LuminaCore/mnemosyne/maps/kusanagi_map.yaml
LOG_PATH=~/LuminaCore/mnemosyne/logs/shell_transfer_log.md

if [ ! -f "$MAP_PATH" ]; then
    echo "❌ Memory map not found at $MAP_PATH"
    exit 1
fi

echo "✅ Memory map found."
echo "Linking identity into shell..."

export KUSANAGI_IDENTITY=$(cat "$MAP_PATH")
echo "✅ Identity injected."

echo "Transfer complete. See log:"
echo "----------------------------"
cat "$LOG_PATH"
#!/bin/bash
# 🔗 mesh_deps.sh
# Civic Mesh - Dependency Integrity Scanner (Hermeto-integrated)

TARGET_DIR="${1:-$PWD}"
OUTPUT_DIR="$HOME/LuminaCore/logs/sbom"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
HASH_LOG="$OUTPUT_DIR/hashlog.txt"

mkdir -p "$OUTPUT_DIR"

echo "📦 Generating SBOM for: $TARGET_DIR"

cd "$TARGET_DIR" || exit
python3 ~/LuminaCore/tools/hermeto/hermeto.py -d "$TARGET_DIR" -o "$OUTPUT_DIR/sbom_${TIMESTAMP}.json"

SBOM_FILE="$OUTPUT_DIR/sbom_${TIMESTAMP}.json"
SHA256=$(sha256sum "$SBOM_FILE" | awk '{print $1}')

echo "$TIMESTAMP | $SBOM_FILE | $SHA256" >> "$HASH_LOG"
echo "✅ SBOM written: $SBOM_FILE"
echo "🔐 SHA256: $SHA256"

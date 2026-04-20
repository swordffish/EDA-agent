#!/bin/bash
# hooks/pre_flow_stage.sh
# Runs before mcp__orfs__openroad to validate inputs

set -e

PROJ="/mnt/c/eda/hw2/mypj1"
LOG="$PROJ/logs/precheck.log"
mkdir -p "$PROJ/logs"

echo "[$(date)] pre_flow_stage hook: validating inputs..." >> "$LOG"

# Check that orfs-agent container is running
if ! docker ps --format '{{.Names}}' | grep -q '^orfs-agent$'; then
  echo "ERROR: orfs-agent container is not running. Start with:"
  echo "  docker run -d --name orfs-agent -v \$(pwd)/design:/workspace openroad/orfs:latest sleep infinity"
  exit 1
fi

# Check RTL files exist
RTL_DIR="$PROJ/design/rtl"
if [ ! -d "$RTL_DIR" ] || [ -z "$(ls "$RTL_DIR"/*.v 2>/dev/null)" ]; then
  echo "ERROR: No .v files found in $RTL_DIR" >&2
  exit 1
fi

# Check SDC file exists
SDC="$PROJ/design/constraint.sdc"
if [ ! -f "$SDC" ]; then
  echo "WARNING: $SDC not found — run generate_config first" >&2
fi

echo "[$(date)] pre_flow_stage: all checks passed" >> "$LOG"
exit 0

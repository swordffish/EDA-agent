#!/bin/bash
# hooks/post_flow_stage.sh
# Runs after mcp__orfs__openroad to check results and auto-parse reports

set -e

PROJ="/mnt/c/eda/hw2/mypj1"
LOG="$PROJ/logs/poststage.log"
mkdir -p "$PROJ/logs"

STAGE_NAME="${STAGE_NAME:-unknown}"
STAGE_LOG="$PROJ/logs/${STAGE_NAME}.log"

echo "[$(date)] post_flow_stage hook: checking stage=$STAGE_NAME" >> "$LOG"

# Check if log file exists
if [ -f "$STAGE_LOG" ]; then
  if grep -qi "error\|fail\|aborted" "$STAGE_LOG" 2>/dev/null; then
    echo "WARNING: $STAGE_NAME log contains errors — see $STAGE_LOG"
    echo "Last 20 lines of $STAGE_LOG:"
    tail -20 "$STAGE_LOG" | sed 's/^/  /'
    # Exit 0 so Claude Code can decide what to do, but flag warning
  fi

  # Check for success markers
  if grep -qi "PASSED\|synthesis succeeded\|exit 0" "$STAGE_LOG" 2>/dev/null; then
    echo "[$(date)] $STAGE_NAME: PASSED" >> "$LOG"
  fi
else
  echo "WARNING: No log file found at $STAGE_LOG" >> "$LOG"
fi

# On signoff stage, auto-parse reports
if [ "$STAGE_NAME" = "signoff" ]; then
  echo "[$(date)] Signoff complete — run /backend-flow stage=report to parse reports" >> "$LOG"
fi

exit 0

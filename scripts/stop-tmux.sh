#!/bin/bash
# Stop Sulsocratus Bot tmux session
set -euo pipefail

SESSION="sulsocratus_bot"

if tmux has-session -t "$SESSION" 2>/dev/null; then
    tmux kill-session -t "$SESSION"
    echo "Stopped tmux session: $SESSION"
else
    echo "No tmux session: $SESSION"
fi

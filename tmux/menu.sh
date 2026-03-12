#!/bin/sh
PANE_ID="$1"
choice=$(printf '%s\n' \
  "Horizontal Split" \
  "Vertical Split" \
  "New Window" \
  "Rename Window" \
  "---" \
  "Swap Up" \
  "Swap Down" \
  "Zoom/Unzoom" \
  "Mark/Unmark" \
  "---" \
  "Kill Pane" \
  "Kill Window" \
  "Kill Session" \
  "Respawn Pane" \
  | grep -v '^---$' \
  | fzf --no-info --reverse --no-scrollbar --height=100% --prompt="" --pointer="▸" --bind left-click:accept)

case "$choice" in
  "Horizontal Split") tmux split-window -h -t "$PANE_ID" ;;
  "Vertical Split")   tmux split-window -v -t "$PANE_ID" ;;
  "Swap Up")          tmux swap-pane -U -t "$PANE_ID" ;;
  "Swap Down")        tmux swap-pane -D -t "$PANE_ID" ;;
  "Zoom/Unzoom")      tmux resize-pane -Z -t "$PANE_ID" ;;
  "Mark/Unmark")      tmux select-pane -m -t "$PANE_ID" ;;
  "New Window")       tmux new-window ;;
  "Rename Window")    tmux command-prompt -I "#W" "rename-window -- '%%'" ;;
  "Kill Pane")        tmux kill-pane -t "$PANE_ID" ;;
  "Kill Window")      tmux kill-window ;;
  "Kill Session")     tmux kill-session ;;
  "Respawn Pane")     tmux respawn-pane -k -t "$PANE_ID" ;;
esac

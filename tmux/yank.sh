#!/bin/sh
buf=$(cat | base64 | tr -d '\n')
for tty in $(tmux list-clients -F '#{client_tty}'); do
  printf '\033]52;c;%s\a' "$buf" > "$tty"
done

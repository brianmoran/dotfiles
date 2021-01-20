#!/usr/local/bin/fish

alias dps "docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\""
alias tmux-attach "tmux attach-session -t tMuX ; or tmux new-session -s tMuX"
alias hm "history merge"

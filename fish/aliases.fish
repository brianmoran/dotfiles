#!/usr/local/bin/fish

alias dps "docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\""
alias tmux-attach "tmux attach-session -t tmux-base; or tmux new-session -s tmux-base"
alias vim "nvim"
alias hm "history merge"
alias venv "source venv/bin/activate.fish"

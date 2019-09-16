#!/usr/local/bin/fish

alias g "git"
alias dps "docker ps --format \"table {{.ID}}\t{{.Names}}\t{{.Status}}\t{{.Ports}}\""

alias tmux-attach "tmux attach-session -t tmux-base; or tmux new-session -s tmux-base"
alias v ". venv/bin/activate.fish"
alias c "clear"

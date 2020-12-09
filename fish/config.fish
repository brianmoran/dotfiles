#!/usr/local/bin/fish

source ~/.config/fish/aliases.fish

# secrets (not in version control)
#source ~/.config/fish/secrets.fish

source ~/.config/fish/gopuff.fish

# common vars
source ~/.config/fish/vars.fish

# nvm
#function nvm
#    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
#end

#set -x NVM_DIR "$HOME/.nvm"
#nvm use default --silent

# asdf package manager
# source /usr/local/opt/asdf/asdf.fish

# git prompt
set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set fish_ambiguous_width 2

# set fish_color_autosuggestion 'red'
set fish_color_autosuggestion 'black' '--bold'

# Fish git prompt colors
set __fish_git_prompt_color_dirtystate 'red'
set __fish_git_prompt_color_stagedstate 'green'
set __fish_git_prompt_color_untrackedfiles 'red'
set __fish_git_prompt_color_stashstate 'blue'
set __fish_git_prompt_color_upstream_ahead 'green'
set __fish_git_prompt_color_upstream_behind 'magenta'

# Fish git prompt
set __fish_git_prompt_char_stateseparator '|'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate ''
set __fish_git_prompt_char_stagedstate ' '
set __fish_git_prompt_char_untrackedfiles ''
set __fish_git_prompt_char_stashstate ' '
set __fish_git_prompt_char_upstream_ahead ''
set __fish_git_prompt_char_upstream_behind ''
set __fish_git_prompt_char_upstream_equal ''


function fish_prompt
	# merge history
	hm
  set last_status $status

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s' (__fish_git_prompt)
  printf '\n$ '
  set_color normal
end
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

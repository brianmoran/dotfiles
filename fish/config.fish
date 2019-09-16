#!/usr/local/bin/fish

source ~/.config/fish/aliases.fish

# secrets (not in version control)
source ~/.config/fish/secrets.fish

# common vars
source ~/.config/fish/vars.fish

# work vars (not in version control)
source ~/.config/fish/urbn.fish


# nvm
function nvm
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR "$HOME/.nvm"
nvm use default --silent

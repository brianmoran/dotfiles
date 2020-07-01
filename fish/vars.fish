#!/usr/localbin/fish

#set -x TERM xterm-256color
set -x EDITOR nvim

# fzf
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git --ignore node_modules --ignore Library -g ""'

# go
set -x GOPATH "$HOME/.go"
set -x PATH $GOPATH $GOPATH/bin $PATH
set -x GO111MODULE "auto"

# oracle
set -x ORACLE_HOME "/usr/local/oracle/instantclient_12_2"
set -x DYLD_LIBRARY_PATH "/usr/local/oracle/instantclient_12_2"
set -x LD_LIBRARY_PATH "/usr/local/oracle/instantclient_12_2"
set -x PKG_CONFIG_PATH "/usr/local/oracle/instantclient_12_2"
set -x PATH $ORACLE_HOME $PATH


# python
set -x PYTHONDONTWRITEBYTECODE 1
set -x PYTHON_CONFIGURE_OPTS "--enable-framework"


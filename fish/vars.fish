#!/usr/localbin/fish

#set -x TERM xterm-256color
set -x EDITOR nvim

# fzf
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git --ignore node_modules --ignore Library -g ""'

# go
set -x GOPATH "$HOME/.go"
set -x PATH $GOPATH $GOPATH/bin $PATH
set -x GO111MODULE "auto"

# java
set -x JAVA_HOME (/usr/libexec/java_home -v1.8)

# oracle
set -x ORACLE_HOME "/usr/local/oracle/instantclient_12_2"
set -x DYLD_LIBRARY_PATH "/usr/local/oracle/instantclient_12_2"
set -x LD_LIBRARY_PATH "/usr/local/oracle/instantclient_12_2"
set -x PKG_CONFIG_PATH "/usr/local/oracle/instantclient_12_2"
set -x PATH $ORACLE_HOME $PATH


# python
set -x PYTHONDONTWRITEBYTECODE 1
set -x PYTHON_CONFIGURE_OPTS "--enable-framework"
# fix for terminal in vim
set -e _OLD_FISH_PROMPT_OVERRIDE 
set -e _OLD_VIRTUAL_PYTHONHOME
set -e _OLD_VIRTUAL_PATH

set -x NODEJS_CHECK_SIGNATURES 'no'

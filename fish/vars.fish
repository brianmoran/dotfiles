#!/usr/localbin/fish

set -x TERM xterm-256color
set -x EDITOR vim


# go
set -x GOPATH "$HOME/.go"
set -x PATH $GOPATH $PATH
set -x GOFLAGS ""

# oracle
set -x ORACLE_HOME "$HOME/.oracle/instantclient_12_2"
set -x DYLD_LIBRARY_PATH "/Users/moranb1/.oracle/instantclient_12_2"
set -x LD_LIBRARY_PATH "/Users/moranb1/.oracle/instantclient_12_2"
set -x PKG_CONFIG_PATH "/Users/moranb1/.oracle/instantclient_12_2"
set -x PATH $ORACLE_HOME $PATH


# python
set -x PYTHONDONTWRITEBYTECODE true
set -x TERM xterm-256color
set -x PYTHON_CONFIGURE_OPTS "--enable-framework"

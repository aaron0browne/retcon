#!/usr/bin/env zsh

# Start Emacs server daemon.
/usr/local/bin/emacs --daemon

# Start Emacs client.
/usr/local/bin/emacsclient -c $@
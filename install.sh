#!/bin/bash

set -e

echo '

source $HOME/.tmux_runtime/config/tmux.conf

' > $HOME/.tmux.conf

mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/tmux
rm -f ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf
ln -s $HOME/.tmux.conf ${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf

echo 'Installed the tmux configuration successfully!'

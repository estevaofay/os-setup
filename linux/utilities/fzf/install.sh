#!/bin/bash
set -e

if [ ! -e ~/.fzf ]; then
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  
  ~/.fzf/install --key-bindings --completion --update-rc
fi

if ! grep --quiet --extended-regexp "^export FZF_" ~/.bashrc; then
cat <<EOF >> ~/.bashrc
export FZF_DEFAULT_COMMAND="fdfind --type f --follow --exclude .git"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_CTRL_T_COMMAND="fdfind --type f --hidden --follow --exclude .git"
EOF
fi
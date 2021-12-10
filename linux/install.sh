#!/bin/bash

# Create symbolic link between this repo's aliases folder
ln -s ~/Documents/git/xFayre/os-setup/linux/aliases/ .aliases

# Add .aliases to your ${PATH}
cat <<EOF >> ~/.bashrc

# ALIASES
PATH="\${HOME}/.aliases:\${PATH}"
EOF

# Source aliases
source ./aliases/aliases

# Create symbolic link between this repo's aliases folder
ln -s ~/Documents/git/xFayre/os-setup/linux/bash_config .bash_config

# Add .bash_config to your ${PATH}
cat <<EOF >> ~/.bashrc

# BASH_CONFIG
PATH="\${HOME}/.bash_config:\${PATH}"
EOF

source ~/.bashrc
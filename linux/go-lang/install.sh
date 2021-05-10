#!/bin/bash

# Docs https://golang.org/doc/install

# Download tarball
# https://golang.org/dl/go1.16.4-linux-amd64.tar.gz 
## FOR SOME REASON NEITHER WGET NOR CURL WERE WORKING

# Extract the archive you downloaded into /usr/local, creating a Go tree in /usr/local/go.
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz

# Add /usr/local/go/bin to the PATH environment variable
if ! grep --quiet --extended-regexp "^export GO_HOME" ~/.bashrc; then
cat <<EOF >> ~/.bashrc

# GO Language
export GO_HOME=/usr/local/go/bin
PATH=\$PATH:\$GO_HOME
EOF
fi

# Check go version
go version
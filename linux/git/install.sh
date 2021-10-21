#!/bin/bash

sudo add-apt-repository ppa:git-core/ppa
sudo apt update
sudo apt install git

sudo apt-get install git

git config --global --edit
git config --global pull.rebase true
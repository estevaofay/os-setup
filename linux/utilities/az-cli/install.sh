#!/bin/bash

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

az upgrade

sudo apt autoremove

az login
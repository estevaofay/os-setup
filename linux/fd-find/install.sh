#!/bin/bash

if [ !$(which fd) ]; then
    sudo apt-get install --yes --quiet fd-find
fi

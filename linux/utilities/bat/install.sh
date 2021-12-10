#!/bin/bash
if [ !$(which bat) ]; then
    sudo apt-get install --yes --quiet bat
fi

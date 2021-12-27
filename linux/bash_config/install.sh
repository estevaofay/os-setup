#!/bin/bash
for file in $(find ~/.bash_config/env_vars/ -name '*.sh'); 
    do source $file; 
done
#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="${HOME}/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-multiline'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

export WANDHYDRANT_BASH_SCRIPTS="${HOME}/bash"

for script in ${WANDHYDRANT_BASH_SCRIPTS}/*.bash; do
  source $script
done

# Load Bash It
source $BASH_IT/bash_it.sh

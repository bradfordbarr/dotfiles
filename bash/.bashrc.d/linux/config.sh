#!/bin/bash

# Platform specific paths
AUTOENV="${HOME}/.local/bin/activate.sh"
LESSPIPE="/usr/bin/lesspipe"
NVM="${HOME}/.nvm/nvm.sh"

if [ -f /usr/share/bash-completion/bash_completion ]; then
  BASH_COMPLETION="/usr/share/bash-completion/bash_completion"
elif [ -f /etc/bash_completion ]; then
  BASH_COMPLETION="/etc/bash_completion"
fi

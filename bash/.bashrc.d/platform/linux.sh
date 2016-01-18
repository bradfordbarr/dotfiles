export AUTOENV="${HOME}/.local/bin/activate.sh"
export LESSPIPE="/usr/bin/lesspipe"
export NVM="${HOME}/.nvm/nvm.sh"
export VIRTUALENVWRAPPER="${HOME}/.local/bin/virtualenvwrapper.sh"

# Aliases
alias ls="ls --color=auto"

# Load up the bash completions
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
  fi
fi

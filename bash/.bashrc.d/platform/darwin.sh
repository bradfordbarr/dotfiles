export AUTOENV="/usr/local/opt/autoenv/activate.sh"
export LESSPIPE="/usr/local/bin/lesspipe.sh"
export NVM="${HOME}/.nvm/nvm.sh"
export VIRTUALENVWRAPPER="/usr/local/bin/virtualenvwrapper.sh"

# Aliases
alias ls="ls -G"

# Load up the bash completions
for f in $(find "/usr/local/etc/bash_completion.d" -type f -or -type l); do
  source ${f}
done


# Setup path stuff.
# Homebrew (mac) loves /usr/local
export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# August paths
export PATH="/Users/bbarr/src/august/scripts/bin:/Users/bbarr/src/august/firmware-tools/mac/arm-gcc/bin:${PATH}"
export ANDROID_HOME=/usr/local/opt/android-sdk

# Aliases
alias ls="ls -G"

# Virtualenv Wrapper
export WORKON_HOME="${HOME}/.virtualenvs"
export PROJECT_HOME="${HOME}/src"
if [ -f "/usr/local/bin/virtualenvwrapper.sh" ]; then
    source "/usr/local/bin/virtualenvwrapper.sh"
fi

# Autoenv
if [ -f "/usr/local/opt/autoenv/activate.sh" ]; then
    source "/usr/local/opt/autoenv/activate.sh"
fi

# Nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Bash autocompletions
if [ -d $( brew --prefix )/etc/bash_completion.d ]; then
    for f in "$( brew --prefix )/etc/bash_completion.d/*"; do
      source $f
    done
fi

# Gruvbox pallet
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

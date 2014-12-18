# Setup path stuff.
# Homebrew (mac) loves /usr/local
export PATH="/usr/local/bin:/usr/local/sbin:${PATH}"

# Aliases
alias ls="ls -G"

# Virtualenv Wrapper
export WORKON_HOME="${HOME}/.virtualenvs"
export PROJECT_HOME="${HOME}/src"
if [ -f "/usr/local/bin/virtualenvwrapper.sh" ]; then
    source "/usr/local/bin/virtualenvwrapper.sh"
fi

# Common configuration between hosts.

# History config
HISTCONTROL=ignoreboth # Ignore things with spaces and duplicates
HISTSIZE=1000          # Number of commands to save.
HISTFILESIZE=2000      # Number of lines max in the history file
shopt -s histappend    # Append to the history file

# Redraw config
shopt -s checkwinsize  # Check the window size after each command is issued

# Better less for non-text
[ -x "${LESSPIPE}" ] && eval "$(SHELL=/bin/sh ${LESSPIPE})"

# Rbenv
if [ -n "$(which rbenv)" ]; then
  eval "$(rbenv init -)"
fi

# Nvm
export NVM_DIR="${HOME}/.nvm"
if [ -f "${NVM}" ]; then
  source ${NVM}
fi

# Virtualenv Wrapper
export WORKON_HOME="${HOME}/.virtualenvs"
export PROJECT_HOME="${HOME}/src"
if [ -f "${VIRTUALENVWRAPPER}" ]; then
    source "${VIRTUALENVWRAPPER}"
fi

# Autoenv
if [ -f "${AUTOENV}" ]; then
    source "${AUTOENV}"
fi

# Job stuff
for job in $(find "${BASHRC_DIR}/enlistments" -type f -iname "*.sh"); do
  source ${job}
done

# Start an ssh-agent if it's not already running
[ -z "$SSH_AGENT_PID" ] && SSH_AGENT_PID=$(pgrep -u ${USER} ssh-agent)
[ -z "$SSH_AUTH_SOCK" ] && SSH_AUTH_SOCK=$(find /tmp -name "agent.${SSH_AUTH_PID}")
[ -n "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK
[ -n "$SSH_AGENT_PID" ] && export SSH_AGENT_PID
if [ -z "${SSH_AGENT_PID}" -a -z "${SSH_TTY}" ]; then
  eval $(ssh-agent -s) > /dev/null
fi

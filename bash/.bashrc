# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Shell options
shopt -s checkwinsize   # Check the window size after each command is issued
shopt -s cmdhist        # Attempt to save multi-line command as a single line
shopt -s expand_aliases # Expand aliases.
shopt -s histappend     # Append to the history file
shopt -s hostcomplete   # Hostname completion
shopt -s progcomp       # Enable programmable autocomplete
shopt -s promptvars     # Expand the prompt variables
shopt -s interactive_comments    # Make sure we can use comments in the shell
shopt -s no_empty_cmd_completion # Don't try to autocomplete an empty line

# Variables
export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export BASHRC_DIR="${HOME}/.bashrc.d"

export PLATFORM="$(uname -s | tr '[:upper:]' '[:lower:]')"
export PLATFORM_ALIAS="${BASHRC_DIR}/${PLATFORM}/alias.sh"
export PLATFORM_CONFIG="${BASHRC_DIR}/${PLATFORM}/config.sh"

# History
export HISTCONTROL=ignoreboth # Ignore things with spaces and duplicates
export HISTSIZE=1000          # Number of commands to save.
export HISTFILESIZE=2000      # Number of lines max in the history file

# Platform
[ -f "${PLATFORM_ALIAS}" ] && source "${PLATFORM_ALIAS}"
[ -f "${PLATFORM_CONFIG}" ] && source "${PLATFORM_CONFIG}"

# Lesspipe
[ -x "${LESSPIPE}" ] && eval "$(SHELL=/bin/sh ${LESSPIPE})"

# Autocomplete
[ -f "${BASH_COMPLETION}" ] && source "${BASH_COMPLETION}"

# SSH Agent
[ -z "$SSH_AGENT_PID" ] && SSH_AGENT_PID=$(pgrep -u ${USER} ssh-agent)
[ -z "$SSH_AUTH_SOCK" ] && SSH_AUTH_SOCK=$(find /tmp -name "agent.${SSH_AUTH_PID}")
[ -n "$SSH_AUTH_SOCK" ] && export SSH_AUTH_SOCK
[ -n "$SSH_AGENT_PID" ] && export SSH_AGENT_PID
if [ -z "${SSH_AGENT_PID}" -a -z "${SSH_TTY}" ]; then
  eval $(ssh-agent -s) > /dev/null
fi

# NVM
if [ -f "${NVM}" ]; then
  export NVM_DIR="${HOME}/.nvm"
  mkdir -p ${NVM_DIR}
  source "${NVM}"
fi

# RBENV
[ -n "$(which rbenv)" ] && eval "$(rbenv init -)"

# Autoenv
[ -f "${AUTOENV}" ] && source "${AUTOENV}"

# Nice to haves
source "${BASHRC_DIR}/funcs.sh"
source "${BASHRC_DIR}/colors.sh"
source "${BASHRC_DIR}/prompt.sh"

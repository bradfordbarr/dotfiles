# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Variables
export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:${PATH}"
export PLATFORM=$(uname)
export BASHRC_DIR="${HOME}/.bashrc.d"

# Load common configuration
source "${BASHRC_DIR}/platform/common.sh"

# Load platform dependent files
case "${PLATFORM}" in
  Darwin)
    source "${BASHRC_DIR}/platform/darwin.sh"
    ;;
  Linux)
    source "${BASHRC_DIR}/platform/linux.sh"
    ;;
esac

# Load color codes and pallet
source "${BASHRC_DIR}/colors.sh"

# Load the prompt
source "${BASHRC_DIR}/prompt.sh"

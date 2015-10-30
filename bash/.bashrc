# Job stuff
for job in $(find ~/.bashrc.d/enlistments -type f -iname "*.sh"); do
  source ${job}
done

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

# Autoenv
if [ -f "/usr/local/opt/autoenv/activate.sh" ]; then
    source "/usr/local/opt/autoenv/activate.sh"
fi

# Nvm
export NVM_DIR=~/.nvm
if [ -f "$(brew --prefix nvm)/nvm.sh" ]; then
  source $(brew --prefix nvm)/nvm.sh
fi

# Bash autocompletions
for f in $(find "/usr/local/etc/bash_completion.d" -type f -or -type l); do
  source ${f}
done

# Gruvbox pallet
source "$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"

# PS1
# Things I want in my PS1 (in no particular order) 
# Exit status of previous command
# Git branch (with modifications or not)
# History number?

# Colors
red=$(tput setaf 9)
green=$(tput setaf 10)
yellow=$(tput setaf 11)
blue=$(tput setaf 12)
purple=$(tput setaf 13)
aqua=$(tput setaf 14)
reset=$(tput sgr0)

__git_branch() {
  # Make sure we can see the dirty state
  GIT_PS1_SHOWDIRTYSTATE=1

  # Parse the branch and any modifiers
  local git_tuple=$(__git_ps1 | sed -e 's/^[[:space:]](\([^()]*\))/\1/g')
  local git_branch=$(echo ${git_tuple} | cut -d ' ' -f 1)
  local git_modifier=$(echo ${git_tuple} | cut -d ' ' -f 2)
  local branch_color="${green}"

  # Exit if there's no branch name
  if [ -z "${git_branch}" ]; then return; fi

  # Print the right color based on the git modifier.
  # * (unstaged) -- Red
  # + (staged)   -- Yellow
  #   (clean)    -- Green
  if [ "${git_modifier}" = '*' ]; then
    branch_color="${red}"
  elif [ "${git_modifier}" = '+' ]; then
    branch_color="${yellow}"
  fi
  echo -e "${reset}on ${branch_color}${git_branch}${reset}"
}

PROMPT_COMMAND=''
PS1='\[${blue}\]\u\
 \[${reset}\]at\
 \[${purple}\]\h\
 \[${reset}\]in\
 \[${aqua}\]\W\
 \[$(__git_branch)\]\n\
\[${reset}\]\$ '

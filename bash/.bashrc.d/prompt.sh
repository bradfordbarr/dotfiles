# PS1
# Things I want in my PS1 (in no particular order) 
# Exit status of previous command
# Git branch (with modifications or not)
# History number?

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

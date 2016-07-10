#!/bin/bash

# Turns a string lowercase
lower() {
  tr '[:upper:]' '[:lower:]'
}

# Turns a string uppercase
upper() {
  tr '[:lower:]' '[:upper:]'
}

# Figures out if a string is trueish
trueish() {
  case "$@" in
    y|Y|yes|Yes|YES|t|T|true|True|TRUE) return 0;;
    *) return 1;;
  esac
}

# Figures out if a string is falseish
falseish() {
  if trueish $@; then
    return 1;
  else
    return 0;
  fi
}

# Asks to save the alias
alias() {
  local save=
  builtin alias "$@"

  if ! grep -q "${cmd}" ${PLATFORM_ALIAS}; then
    read -p "Save this alias? (y|N)" save
    if trueish $save; then
      echo "alias $@" >> ${PLATFORM_ALIAS}
    fi
  fi
}

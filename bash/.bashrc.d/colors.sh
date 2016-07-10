#!/bin/bash
# Gruvbox pallet
GRUVBOX_PALETTE="$HOME/.vim/bundle/gruvbox/gruvbox_256palette.sh"
[ -f "${GRUVBOX_PALETTE}" ] && source "${GRUVBOX_PALETTE}"

# Colors
background=$(tput setaf 0)
red_light=$(tput setaf 1)
green_light=$(tput setaf 2)
yellow_light=$(tput setaf 3)
blue_light=$(tput setaf 4)
purple_light=$(tput setaf 5)
aqua_light=$(tput setaf 6)
grey_light=$(tput setaf 7)

grey_dark=$(tput setaf 8)
red=$(tput setaf 9)
green=$(tput setaf 10)
yellow=$(tput setaf 11)
blue=$(tput setaf 12)
purple=$(tput setaf 13)
aqua=$(tput setaf 14)
foreground=$(tput setaf 15)

reset=$(tput sgr0)

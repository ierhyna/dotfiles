#
# HISTORY
#

# Set history size and file
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Save each command’s beginning timestamp
# (in seconds since the epoch) and the duration (in seconds)
setopt EXTENDED_HISTORY

# This option both imports new commands from the history file,
# and also causes your typed commands to be appended
# to the history file
setopt SHARE_HISTORY

# Append history instead of overwriting
# multiple parallel sessions will all have the new entries
# from their history lists added to the history file,
# in the order that they exit
setopt APPEND_HISTORY

#
# COMPLETION
#

# Enable completion
autoload -U compinit
compinit -C

# Do not autoselect the first completion entry
unsetopt MENU_COMPLETE

# Show autocomplete menu on second Tab press
setopt AUTO_MENU

# Tab completion from both ends
setopt COMPLETE_IN_WORD

# Case- and hypen-insensetive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'

# Highlight completion choices
zstyle ':completion:*' menu select

#
# PROMPT
#

# Load version control system addon
autoload -Uz vcs_info

# Enable command substitution in prompts
setopt PROMPT_SUBST

# Only use git from vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' use-simple true

# Only export one msg variable from vcs_info
zstyle ':vcs_info:*' max-exports 1

# Formatting for git info
# vcs_info_msg_0_ = ' %b' (for branch)
zstyle ':vcs_info:git*' formats ' %b'

# Do this before
precmd() {
  # Add new line between commands
  print''
  # Get git info
  vcs_info
}

# Custom prompt:
# ~/path/to/current/dir branch
# >
PROMPT='%F{cyan}%~%F{black}${vcs_info_msg_0_}
%F{magenta}${PROMPT_SYMBOL:-❯}%f '

# Enable colors
autoload colors
colors

export CLICOLOR=1
export LSCOLORS=exfxbxdxcxegedabagacad

#
# ALIASES
#

# By default:
# -G use colors
# -F indicate types
# -h use unit suffixes with -l
alias ls='ls -GFh'
# Table view
alias ll="ls -lA"
# Show hidden files
alias la="ls -A"

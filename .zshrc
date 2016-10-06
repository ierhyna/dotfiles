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
export CLICOLOR=1
export LSCOLORS=exFxBxDxCxegedabagacad

# Use colors for ls by default
alias ls='ls -GFh'

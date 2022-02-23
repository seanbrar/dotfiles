#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "`dircolors`"
#alias ls='ls -lah --color=auto'
alias ls='exa -a --icons --color=auto --group-directories-first'
alias lsf='exa -la --icons --color=auto --group-directories-first'
alias rpcs3='QT_QPA_PLATFORM=xcb rpcs3'
alias yuzu='QT_QPA_PLATFORM=xcb yuzu'
alias ssh='kitty +kitten ssh' # Fix for SSH using kitty

# Default
#PS1='[\u@\h \W]\$ '

# With brackets
#PS1='\[\033[34m\][\W]\[\033[00m\] \$ '

# Without brackets
PS1='\[\033[0;36m\]\W\[\033[00m\] \$ '

export EDITOR='nvim'
export VISUAL='nvim'

# kitty autocompletion
source <(kitty + complete setup bash)


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

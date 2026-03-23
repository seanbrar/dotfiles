#
# ~/.bash_profile
#

# Start GNOME Keyring daemon
if [ -n "$DESKTOP_SESSION" ]; then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

. "$HOME/.local/share/../bin/env"

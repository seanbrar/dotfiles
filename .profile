if [ x"$XDG_CURRENT_DESKTOP" = x"Sway" ] ; then
	QT_QPA_PLATFORM=wayland
	QT_QPA_PLATFORMTHEME=qt5ct
	export QT_QPA_PLATFORMTHEME
	export EDITOR='nvim'
	export BROWSER='com.brave.Browser.desktop'
	export TERMINAL='kitty'

fi



#export WINEPREFIX=~/.local/share/wine

# Adds `~/.local/bin` to $PATH
export PATH="${PATH:+${PATH}:}~/.local/bin"

# ~/ Clean-up: # (Thanks Luke)
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
#export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/xinitrc"
##export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
#export NOTMUCH_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/notmuch-config"
#export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
#export LESSHISTFILE="-"
#export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
#export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/shell/inputrc"
#export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
##export ALSA_CONFIG_PATH="$XDG_CONFIG_HOME/alsa/asoundrc"
##export GNUPGHOME="${XDG_DATA_HOME:-$HOME/.local/share}/gnupg"
#export WINEPREFIX="${XDG_DATA_HOME:-$HOME/.local/share}/wineprefixes/default"
#export KODI_DATA="${XDG_DATA_HOME:-$HOME/.local/share}/kodi"
#export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/password-store"
#export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
#export ANDROID_SDK_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
#export CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo"
#export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
#export ANSIBLE_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/ansible/ansible.cfg"
#export UNISON="${XDG_DATA_HOME:-$HOME/.local/share}/unison"
#export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history"
#export WEECHAT_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/weechat"
#export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
#export ELECTRUMDIR="${XDG_DATA_HOME:-$HOME/.local/share}/electrum"

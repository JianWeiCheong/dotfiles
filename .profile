#!/usr/bin/env sh
# Profile file. Runs on login.

# Adds `~/.local/bin/` and all subdirectories to $PATH
export PATH="$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':')$PATH"
# Adds `~/.local/TinyTeX/bin/` and all subdirectories to $PATH
export PATH="$(du "$HOME/.local/TinyTeX/bin/" | cut -f2 | tr '\n' ':')$PATH"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"
export FILE="ranger"
export SUDO_ASKPASS="$HOME/.local/bin/tools/dmenupass"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export QT_QPA_PLATFORMTHEME="qt5ct"



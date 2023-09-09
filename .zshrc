export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 12

HIST_STAMPS="yyyy/mm/dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration -----------------------------------------------------------

export EDITOR=code

# aliases
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# functions
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# fnm
export PATH="/home/amir/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"

# android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

export CAPACITOR_ANDROID_STUDIO_PATH=$HOME/android-studio/bin/studio.sh

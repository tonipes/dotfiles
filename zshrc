# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Editors
export EDITOR=/usr/bin/micro
export VISUAL=/usr/bin/micro

# Path
PATH="$HOME/.local/bin:$HOME/.bin:$PATH"
PATH="/Applications/Blender.app/Contents/MacOS:$PATH"
PATH="/Applications/Aseprite.app/Contents/MacOS:$PATH"

# export ANDROID_SDK_ROOT=/Users/toni/Library/Android/sdk
export ANDROID_SDK_ROOT=/Applications/Unity/Hub/Editor/2020.2.2f1/PlaybackEngines/AndroidPlayer/SDK

PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools


# Aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# Functions
if [ -f ~/.functions ]; then
  source ~/.functions
fi

# Local environment
if [ -f ~/.env.local ]; then
  source ~/.env.local
fi

# Bash profile
if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi
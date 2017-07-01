#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export PATH=/usr/local/bin:$PATH

# Editors
export EDITOR=/usr/bin/micro
export VISUAL=/usr/bin/micro

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

#PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
PATH="$HOME/.bin:$PATH"

export LSCOLORS="exfxcxdxbxegedabagacad"

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
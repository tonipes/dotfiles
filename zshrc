#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Editors
export EDITOR=/usr/bin/micro
export VISUAL=/usr/bin/micro

# Path
PATH="$HOME/.bin:$PATH"

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

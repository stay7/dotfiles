# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kakao/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# starship
#export STARSHIP_CONFIG=~/.dotfiles/.starship/starship.toml
#export STARSHIP_CACHE=~/.dotfiles/.starship/cache
eval "$(starship init zsh)"

#
# [Alias]
#

# custom
alias gs="git status"

# exa
if [ "$(command -v exa)" ]; then
    unalias -m 'll'
    unalias -m 'l'
    unalias -m 'la'
    unalias -m 'ls'
    alias ls='exa -G  --color always --icons -s type'
    alias ll='exa -l --color always --icons -a -s type'
fi

# bat
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -p --theme="Nord" '
fi


NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
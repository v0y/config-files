# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify share_history
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/voy/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# load git prompt
if [ -f ~/.zsh_git_prompt ]; then
    . ~/.zsh_git_prompt
fi

# load left prompt
if [ -f ~/.zsh_prompt ]; then
    . ~/.zsh_prompt
fi

if [ -f ~/.fab_zsh_completion ]; then
    . ~/.fab_zsh_completion
fi

if [ -f ~/.dir_colors/dircolors.ansi-universal ]; then
    eval $(dircolors ~/.dir_colors/dircolors.ansi-universal)
fi

# antigen
if [ -f ~/.antigen.zsh ]; then
    . ~/.antigen.zsh
fi

# nvm
export NVM_DIR="~/.nvm"
if [ -f ~/.nvm/nvm.sh ]; then
    . ~/.nvm/nvm.sh
fi

# INFINALITY FONT RENDERING CONFIG
if [ -f /etc/infinality-settings.sh ]; then
    . /etc/infinality-settings.sh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# antigen
source ~/.antigen.zsh
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=`which python`
export VIRTUALENVWRAPPER_VIRTUALENV=`which virtualenv`
export PROJECT_HOME=$HOME/workspace
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source `which virtualenvwrapper.sh`

export TERM=xterm-256color
export PATH=$PATH:~/.gitfiles/commands

# linuxbrew
export PATH=~/.linuxbrew/bin:$PATH
export MANPATH=~/.linuxbrew/share/man:$MANPATH
export INFOPATH=~/.linuxbrew/share/info:$INFOPATH

# ctrl + arrows
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word
export WORDCHARS=''

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# ansible
export ANSIBLE_NOCOWS=1

export IBUS_ENABLE_SYNC_MODE=1


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

fpath=(~/.zsh-completions/src $fpath)

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=`which python`
export VIRTUALENVWRAPPER_VIRTUALENV=`which virtualenv`
export PROJECT_HOME=$HOME/workspace
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source `which virtualenvwrapper.sh`

export TERM=xterm-256color
export PATH=$PATH:~/.linuxbrew/bin
export PATH=$PATH:~/.gitfiles/commands

# ctrl + arrows
bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word
export WORDCHARS=''

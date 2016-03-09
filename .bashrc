# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# load prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# load autocomplete
if [ -f ~/.bash_completion ]; then
    . ~/.bash_completion
fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found ]; then
	function command_not_found_handle {
	        # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
		   /usr/bin/python /usr/lib/command-not-found -- $1
                   return $?
		else
		   return 127
		fi
	}
fi

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

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# load out of repo shit
if [ -f ~/.out_of_repo_bash_shit ]; then
    . ~/.out_of_repo_bash_shit
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

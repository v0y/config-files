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

# load out of repo shit
if [ -f ~/.out_of_repo_bash_shit ]; then
    . ~/.out_of_repo_bash_shit
fi

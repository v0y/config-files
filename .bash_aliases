# standard
alias s="sudo"
alias lg="ls | grep"
alias llg="ls -lh | grep"
alias psgrep="ps -aux | grep"
alias clr="clear"
alias ll="ls -lh"
alias la="ls -alh"
alias gr="grep"
initd() { sudo /etc/init.d/$1 $2;};

# special
alias cinnamon_fix="export DISPLAY=:0; cinnamon &"
alias fn_fix="echo 2 > /sys/module/hid_apple/parameters/fnmode"
javar() { java -Xmx$1M -Xms$1M -jar $2; };
top-ten() { print -l -- ${(o)history%% *} | uniq -c | sort -nr | head -n 10; };

# config
alias alias_edit="vim ~/.bash_aliases"
alias gitconf="vim ~/.gitconfig"

# usage: command; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# git
# `g` with no arguments is `git status` and with arguments acts like `hub`
function g() {
  if [ $# -eq 0 ]; then
    git status
  else
    git "$@"
  fi
}

# cd
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"

# install
alias install="sudo apt-get install"
alias pinstall="pip install"
alias pipreq="pip install -r requirements.txt"

# python
alias py="python"
bpython() {
    if test -n "$VIRTUAL_ENV"; then
        PYTHONPATH="$(python -c 'import sys; print ":".join(sys.path)')" \
        command bpython "$@"
    else
        command bpython "$@"
    fi
}
alias bpy="bpython"
alias nt="nosetests"
alias pyc="find . -name \"*.pyc\" -delete"

# django
alias mpy="python manage.py"
alias dadmin="django-admin.py"
alias dadmincreate="python manage.py createsuperuser --username admin --email a@a.pl"
superuser() { python manage.py createsuperuser --username $1 --email $1@django.pl; };

# coffeescript
alias cfc="coffee -c"

# virtualenvs
alias mkvirtualenv3="mkvirtualenv --python=/usr/bin/python3"
cddev-here() { DIR=`pwd`; cdvirtualenv && cd bin && echo "alias cddev='cd $DIR'" >> postactivate && cat postactivate; };

# vagrant
alias v="vagrant"
alias vfix="sudo apt-get install linux-headers-`uname -r`; sudo /etc/init.d/vboxdrv setup; vagrant up"

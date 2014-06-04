# standard
alias lo="libreoffice"
alias s="sudo"
alias krowa="apt-get moo"
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
    hub "$@"
  fi
}
alias git="hub"

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
alias bpy="bpython"

# django
alias mpy="python manage.py"
alias dadmin="django-admin.py"
alias dadmincreate="python manage.py createsuperuser --username admin --email a@a.pl"
superuser() { python manage.py createsuperuser --username $1 --email $1@django.pl; };

# coffeescript
alias cfc="coffee -c"

# virtualenvs
alias mkvirtualenv3="mkvirtualenv --python=/usr/bin/python3.3"
cddev-here() { DIR=`pwd`; cdvirtualenv && cd bin && echo "alias cddev='cd $DIR'" >> postactivate && cat postactivate; };

# nodeenvs
mknodeenv() { cd ~/.nodeenvs && nodeenv $1 && cd -; };
workonnode() { . ~/.nodeenvs/$1/bin/activate; };

# vagrant
alias v="vagrant"
alias vfix="sudo apt-get install linux-headers-`uname -r`; sudo /etc/init.d/vboxdrv setup; vagrant up"
vrun() { cd ~/workspace/developer; ./project.sh run $1; cd -; alert; };
vrefresz() { cd ~/workspace/developer; ./project.sh refresh $1; cd -; alert; };
alias vrefresh="vrefresz"

# fabric
alias f="fab"
alias ghost="fab managepy:'migrate --delete-ghost-migrations'"
alias fr="fab restart"
alias ffr="fab full_restart; alert"
alias fcd="fab clear_database"
alias fdb="fab download_backup; alert"
alias frb="fab restore_backup; alert"
alias fup="fab update; alert"
alias fmpy="fab managepy"
alias fst="fab static"
alias fsql="fab sql"
alias ft="fab test"
alias fadmin="fab managepy:'createsuperuser --username admin --email a@a.pl'"
alias ffra="fab full_restart; alert; fab managepy:'createsuperuser --username admin --email a@a.pl'"

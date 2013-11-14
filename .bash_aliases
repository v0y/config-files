# standard
alias lo="libreoffice"
alias s="sudo"
alias krowa="apt-get moo"
alias lg="ls | grep"
alias psgrep="ps -aux | grep"
alias clr="clear"
alias ll="ls -l"

# config
alias alias_edit="vim ~/.bash_aliases"
alias gitconf="vim ~/.gitconfig"
alias ctg="cp ~/.bash_aliases ~/workspace/dotfiles/; cp ~/.gitconfig ~/workspace/dotfiles/; cp ~/.q3a/q3ut4/config.cfg ~/workspace/dotfiles/.q3a/q3ut4/; cp ~/.vimrc ~/workspace/dotfiles/; cp ~/.bash_prompt ~/workspace/dotfiles/; cp ~/.gitfiles/global-ignore ~/workspace/dotfiles/.gitfiles/; cp ~/.config/terminator/config ~/workspace/dotfiles/.config/terminator/; cp ~/.ssh/config ~/workspace/dotfiles/.ssh; cp /etc/hosts ~/workspace/dotfiles/etc/hosts; cd ~/workspace/dotfiles/; git status"

# usage: command; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# git
# `g` with no arguments is `git status` and with arguments acts like `git`
function g() {
  if [ $# -eq 0 ]; then
    git status
  else
    git "$@"
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
superuser() { python manage.py createsuperuser --username $1 --email $1@django.pl; };

# coffeescript
alias cfc="coffee -c"

# virtualenvs
venv() { source ~/.virtualenvs/$1/bin/activate; };
venv_create() { virtualenv ~/.virtualenvs/$1 && venv $1; };
alias bw="source ~/.virtualenvs/bindweed/bin/activate && cd ~/workspace/developer/src/bindweed/"
alias rpi="source ~/.virtualenvs/celosia/bin/activate && cd ~/workspace/developer/src/Celosia"
alias stwa="source ~/.virtualenvs/stwa/bin/activate && cd ~/workspace/stwa"
alias cas="source ~/.virtualenvs/castanea/bin/activate && cd ~/workspace/developer/src/cas"
alias snowdrop="source ~/.virtualenvs/snowdrop/bin/activate && cd ~/workspace/developer/src/snowdrop"
alias sorbus="source ~/.virtualenvs/sorbus/bin/activate && cd ~/workspace/developer/src/sorbus"

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

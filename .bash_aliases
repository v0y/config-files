# standard
alias lo="libreoffice"
alias s="sudo"
alias krowa="apt-get moo"
alias lg="ls | grep"
alias psgrep="ps -aux | grep"

# config
alias alias_edit="vim ~/.bash_aliases"
alias gitconf="vim ~/.gitconfig"
alias ctg="cp ~/.bash_aliases ~/workspace/config-files/; cp ~/.gitconfig ~/workspace/config-files/; cp ~/.q3a/q3ut4/config.cfg ~/workspace/config-files/.q3a/q3ut4/; cp ~/.vimrc ~/workspace/config-files/; cp ~/.bash_prompt ~/workspace/config-files/; cp ~/.gitfiles/global-ignore ~/workspace/config-files/.gitfiles/; cp ~/.config/terminator/config ~/workspace/config-files/.config/terminator/; cd ~/workspace/config-files/; git status"

# usage: command; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# git
alias g="git"

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
alias runserver="python manage.py runserver"
alias syncdb="python manage.py syncdb"
alias startproject="django-admin.py startproject"
alias startapp="python manage.py startapp"

# virtualenvs
alias bw="source ~/.virtualenvs/vagrant/bin/activate && cd ~/workspace/vagrant/bindweed/"
alias rpi="source ~/.virtualenvs/celosia/bin/activate && cd ~/workspace/Celosia"
alias ling="source ~/.virtualenvs/ling/bin/activate && cd ~/workspace/ling"
alias cas="source ~/.virtualenvs/castanea/bin/activate && cd ~/workspace/vagrant/castanea"

# vagrant
alias v="vagrant"
alias vfix="sudo apt-get install linux-headers-`uname -r`; sudo /etc/init.d/vboxdrv setup; vagrant up"

# fabric
alias f="fab"
alias fg="fab managepy:'migrate --delete-ghost-migrations'"
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

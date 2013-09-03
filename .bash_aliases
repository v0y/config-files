# standard
alias lo="libreoffice"
alias s="sudo"
alias krowa="apt-get moo"
alias lg="ls | grep"
alias psgrep="ps -aux | grep"
alias clr="clear"

# config
alias alias_edit="vim ~/.bash_aliases"
alias gitconf="vim ~/.gitconfig"
alias ctg="cp ~/.bash_aliases ~/workspace/config-files/; cp ~/.gitconfig ~/workspace/config-files/; cp ~/.q3a/q3ut4/config.cfg ~/workspace/config-files/.q3a/q3ut4/; cp ~/.vimrc ~/workspace/config-files/; cp ~/.bash_prompt ~/workspace/config-files/; cp ~/.gitfiles/global-ignore ~/workspace/config-files/.gitfiles/; cp ~/.config/terminator/config ~/workspace/config-files/.config/terminator/; cp ~/.ssh/config ~/workspace/config-files/.ssh; cp /etc/hosts ~/workspace/config-files/etc/hosts; cd ~/workspace/config-files/; git status"

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
alias mpy="python manage.py"
alias dadmin="django-admin.py"
superuser() { python manage.py createsuperuser --username $1 --email $1@django.pl; };

# coffeescript
alias cfc="coffee -c"

# virtualenvs
alias bw="source ~/.virtualenvs/vagrant/bin/activate && cd ~/workspace/developer/src/bindweed/"
alias rpi="source ~/.virtualenvs/celosia/bin/activate && cd ~/workspace/developer/src/Celosia"
alias ling="source ~/.virtualenvs/ling/bin/activate && cd ~/workspace/ling"
alias cas="source ~/.virtualenvs/castanea/bin/activate && cd ~/workspace/developer/src/cas"
alias snowdrop="source ~/.virtualenvs/snowdrop/bin/activate && cd ~/workspace/developer/src/snowdrop"

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

# backups
alias wp-get-dump="scp wp:/home/snowdrop/www/backups/new/latest /home/voy/bazy/snowdrop/latest_wpolityce.sql.gz"
alias wn-get-dump="scp wn:/home/wnas/www/backups/mysql/latest /home/voy/bazy/snowdrop/latest_wnas.sql.gz"

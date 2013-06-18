# standard
alias py="python"
alias bpy="bpython"
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias lo="libreoffice"
alias s="sudo"
alias install="sudo apt-get install"
alias krowa="apt-get moo"
alias lg="ls | grep"
alias g="git"
alias v="vagrant"
alias psgrep="ps -aux | grep"
alias alias_edit="vim ~/.bash_aliases"

# fix vagrant after kernel update
alias vfix="sudo apt-get install linux-headers-`uname -r`; sudo /etc/init.d/vboxdrv setup; vagrant up"

# git
alias rbm-pro="python /home/voy/workspace/flowerbed/sync/sync.py"
alias gitconf="vim ~/.gitconfig"
alias gitconfig="gitconf"

# django
alias runserver="python manage.py runserver"
alias syncdb="python manage.py syncdb"
alias startproject="django-admin.py startproject"
alias startapp="python manage.py startapp"

# virtualenvs
alias bw="source ~/.virtualenvs/vagrant/bin/activate && cd ~/workspace/vagrant/bindweed/"
alias rpi="source ~/.virtualenvs/celosia/bin/activate && cd ~/workspace/Celosia"
alias ling="source ~/.virtualenvs/ling/bin/activate && cd ~/workspace/ling"

# fabric
alias f="fab"
alias fg="fab managepy:'migrate --delete-ghost-migrations'"
alias fr="fab restart"
alias ffr="fab full_restart"
alias fcd="fab clear_database"
alias fdb="fab download_backup"
alias frb="fab restore_backup"
alias fup="fab update"
alias fmpy="fab managepy"
alias fst="fab static"
alias fsql="fab sql"

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

# django
alias runserver="python manage.py runserver"
alias syncdb="python manage.py syncdb"

# virtualenvs
alias bw="source ~/.virtualenvs/vagrant/bin/activate && cd ~/workspace/vagrant/bindweed/"
alias rpi="source ~/.virtualenvs/celosia/bin/activate && cd ~/workspace/Celosia"
alias ling="source ~/.virtualenvs/ling/bin/activate && cd ~/workspace/ling"

# fabric
alias f="fab"
alias fg="fab managepy:'migrate --delete-ghost-migrations'"
alias fr="fab restart"
alias ffr="fab full_restart"
alias fdd="fab drop_database"
alias frb="fab restore_backup"
alias fup="fab update"
alias fmpy="fab managepy"

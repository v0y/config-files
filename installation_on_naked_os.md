# add sources
```sh
echo "
# hipchat
deb http://downloads.hipchat.com/linux/apt stable main
# spotify
deb http://repository.spotify.com stable non-free
" > /etc/apt/sources.list.d/atlassian-hipchat.list
```

# get keys

```sh
# hipchat
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
# spotify
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
```

# apt-get
```sh
sudo apt-get install mysql-server terminator vim git transmission skype vlc gimp apcalc bpython chromium-browser firefox wine virtualbox libreoffice hipchat spotify-client ubuntuone-client ubuntuone-control-panel ubuntuone-client-proxy ubuntuone-control-panel-qt p7zip p7zip-full npm python gconf-editor tree subversion vim-gnome libxml2-dev libxslt-dev g++ make checkinstall python-virtualenv libmysqlclient-dev python-mysqldb python-dev texlive-fonts-recommended latex-beamer texpower texlive-pictures texlive-latex-extra texlive-lang-polish imagemagick opera
```

# npm
```sh
sudo npm install -g coffee-script less
```

# easy install
```sh
easy_install -U Sphinx
```

# Other

* Node.js
  ```sh
  wget -N http://nodejs.org/dist/node-latest.tar.gz
  tar xzvf node-latest.tar.gz && cd node-v*
  ./configure
  checkinstall #(remove the "v" in front of the version number in the dialog)
  sudo dpkg -i node_*
  ```
* [hub](https://github.com/github/hub)
* [PyCharm](https://www.jetbrains.com/pycharm/download/index.html)
* [Vagrant](http://downloads.vagrantup.com/)
* [xflux](http://justgetflux.com/linux.html)

## Opera plugins

* [adblock](https://addons.opera.com/en/extensions/details/opera-adblock)
* [developer briefcase](https://addons.opera.com/en/extensions/details/the-developer-briefcase)
* [ghostery](https://addons.opera.com/en/extensions/details/ghostery)
* [open in background with long press](https://addons.opera.com/en/extensions/details/open-in-background-with-long-press)


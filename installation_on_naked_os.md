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
sudo apt-get install mysql-server terminator vim git transmission skype vlc gimp apcalc bpython chromium-browser firefox wine virtualbox libreoffice hipchat spotify-client ubuntuone-client ubuntuone-control-panel ubuntuone-client-proxy ubuntuone-control-panel-qt p7zip p7zip-full npm python gconf-editor tree subversion vim-gnome libxml2-dev libxslt-dev g++ make checkinstall python-virtualenv libmysqlclient-dev python-mysqldb python-dev python3-dev texlive-fonts-recommended latex-beamer texpower texlive-pictures texlive-latex-extra texlive-lang-polish imagemagick opera curl rake qnapi htop
```

# npm
```sh
sudo npm install -g coffee-script less
```

# easy install
```sh
easy_install -U Sphinx
```

# pip
```sh
sudo pip install virtualenvwrapper nodeenv
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

* pathogen
  ```sh
  mkdir -p ~/.vim/autoload ~/.vim/bundle; \
  curl -Sso ~/.vim/autoload/pathogen.vim \
      https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
  ```

* vim plugins via pathogen
  ```sh
  mkdir -p ~/.vim/bundle &&     cd ~/.vim/bundle && \
  git clone git://github.com/scrooloose/nerdtree.git && \
  git clone git://github.com/altercation/vim-colors-solarized.git && \
  git clone git://git.code.sf.net/p/vim-latex/vim-latex vim-latex-vim-latex && \
  git clone git://github.com/plasticboy/vim-markdown.git
  ```

* source code pro font
  ```sh
  wget http://downloads.sourceforge.net/project/sourcecodepro.adobe/SourceCodePro_FontsOnly-1.017.zip
  unzip SourceCodePro_FontsOnly-1.017.zip
  mkdir -p ~/.fonts
  cp SourceCodePro_FontsOnly-1.017/OTF/*.otf ~/.fonts/
  fc-cache -f -v
  ```

* ghi
  ```sh
  sudo curl -sL https://raw.githubusercontent.com/stephencelis/ghi/master/ghi > ghi && chmod 755 ghi && mv ghi /usr/local/bin
  ```

* [hub](https://github.com/github/hub)
* [PyCharm](https://www.jetbrains.com/pycharm/download/index.html)
* [vim solarized](https://github.com/altercation/vim-colors-solarized)
* [Vagrant](http://downloads.vagrantup.com/)
* [xflux](http://justgetflux.com/linux.html)

## Opera plugins

* [adblock](https://addons.opera.com/en/extensions/details/opera-adblock)
* [developer briefcase](https://addons.opera.com/en/extensions/details/the-developer-briefcase)
* [ghostery](https://addons.opera.com/en/extensions/details/ghostery)
* [github notifier](https://addons.opera.com/en/extensions/details/github-notifier)
* [open in background with long press](https://addons.opera.com/en/extensions/details/open-in-background-with-long-press)
* [source](https://addons.opera.com/en/extensions/details/source)

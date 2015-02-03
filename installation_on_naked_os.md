# add sources
```sh
sudo -su root
echo "
# hipchat
deb http://downloads.hipchat.com/linux/apt stable main
# spotify
deb http://repository.spotify.com stable non-free
" > /etc/apt/sources.list
```

```sh
sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo add-apt-repository ppa:no1wantdthisname/openjdk-fontfix
sudo apt-get update
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
sudo apt-get install mysql-server terminator vim git transmission skype vlc gimp apcalc bpython chromium-browser firefox wine virtualbox libreoffice hipchat spotify-client p7zip p7zip-full npm python gconf-editor tree subversion vim-gnome libxml2-dev libxslt-dev g++ make checkinstall python-virtualenv libmysqlclient-dev python-mysqldb python-dev python3-dev texlive-fonts-recommended latex-beamer texpower texlive-pictures texlive-latex-extra texlive-lang-polish imagemagick opera curl rake qnapi
htop python-pip docker.io apparmor zsh fontconfig-infinality openjdk-7-jdk postgresql-9.3
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

* antigen
  ```sh
  curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/.antigen.zsh
  ```

* source code pro font
  ```sh
  wget http://downloads.sourceforge.net/project/sourcecodepro.adobe/SourceCodePro_FontsOnly-1.017.zip
  unzip SourceCodePro_FontsOnly-1.017.zip
  mkdir -p ~/.fonts
  cp SourceCodePro_FontsOnly-1.017/OTF/*.otf ~/.fonts/
  fc-cache -f -v
  ```
  
* input font

  [download page](http://input.fontbureau.com/download/)
  ```sh
  cd ~/Downloads/
  unzip Input-Font.zip && cp Input_Fonts/Input/* ~/.fonts/
  fc-cache -f -v
  ```

* ghi
  ```sh
  sudo curl -sL https://raw.githubusercontent.com/stephencelis/ghi/master/ghi > ghi && chmod 755 ghi && mv ghi /usr/local/bin
  ```

* docker
  After instalation via apt-get (`docker.io`):
  ```sh
  sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker
  sudo sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.ioi
  curl -sSL https://get.docker.io/ubuntu/ | sudo sh
  sudo apt-get install linux-image-extra-`uname -r`
  ```

* set zsh as default shell
  ```sh
  chsh -s /bin/zsh <user>
  ```

* zsh completion
  ```sh
  git clone git://github.com/zsh-users/zsh-completions.git ~/.zsh-completion
  ```

* [hub](https://github.com/github/hub)
* [PyCharm](https://www.jetbrains.com/pycharm/download/index.html)
* [vim solarized](https://github.com/altercation/vim-colors-solarized)
* [Vagrant](http://downloads.vagrantup.com/)
* [xflux](http://justgetflux.com/linux.html)

* infinality config
  ```sh
  sudo bash /etc/fonts/infinality/infctl.sh setstyle linux
  sudo mv /etc/profile.d/infinality-settings.sh /etc/infinality-settings.sh
  sudo chmod a+rx /etc/infinality-settings.sh
  ```


# add sources
```sh
sudo -su root
echo "
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
# spotify
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
```

# apt-get
```sh
sudo apt-get install \
terminator \
vim \
git \
transmission \
skype \
vlc \
gimp \
apcalc \
bpython \
chromium-browser \
firefox \
wine \
virtualbox \
libreoffice \
spotify-client \
p7zip \
p7zip-full \
npm \
python \
gconf-editor \
tree \
subversion \
vim-gnome \
libxml2-dev \
libxslt-dev \
g++ \
make \
checkinstall \
python-virtualenv \
libmysqlclient-dev \
python-mysqldb \
python-dev \
python3-dev \
imagemagick \
curl \
rake \
qnapi \
htop \
python-pip \
apparmor \
zsh \
fontconfig-infinality \
watchdog \
bmon \
linuxbrew-wrapper
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
sudo pip install virtualenvwrapper nodeenv ptpython
```

# Other

* Linuxbrew
 ```sh
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
 brew doctor
 ```

* Node.js
  ```sh
  curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
  sudo apt-get install -y nodejs
  ```

* pathogen
  ```sh
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  ```

* vim plugins via pathogen
  ```sh
  mkdir -p ~/.vim/bundle &&     cd ~/.vim/bundle && \
  git clone git://github.com/scrooloose/nerdtree.git && \
  git clone git://github.com/altercation/vim-colors-solarized.git && \
  git clone git://github.com/plasticboy/vim-markdown.git
  ```

* antigen
  ```sh
  curl https://cdn.rawgit.com/zsh-users/antigen/v1.1.4/bin/antigen.zsh > ~/.antigen.zsh
  ```

* [java](https://www.java.com/pl/download/linux_manual.jsp)

* source code pro font
  ```sh
  wget https://github.com/adobe-fonts/source-code-pro/archive/1.017R.zip
  unzip 1.017R.zip
  mkdir -p ~/.fonts
  cp source-code-pro-1.017R/OTF/*.otf ~/.fonts/
  fc-cache -f -v
  ```

* input font

  [download page](http://input.fontbureau.com/download/)
  ```sh
  cd ~/Downloads/
  unzip Input-Font.zip && cp Input_Fonts/Input/* ~/.fonts/
  fc-cache -f -v
  ```

* monaco font

  ```sh
  curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash
  fc-cache -f -v
  ```

* ghi
  ```sh
  sudo curl -sL https://raw.githubusercontent.com/stephencelis/ghi/master/ghi > ghi && chmod 755 ghi && sudo mv ghi /usr/local/bin
  ```

* [nvm](https://github.com/creationix/nvm)

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

* sudo without password
  ```sh
  sudo visudo
  <username> ALL=(ALL) NOPASSWD: ALL  # at the end
  ```

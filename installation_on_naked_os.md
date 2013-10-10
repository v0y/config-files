# add sources
```
echo "
# hipchat
deb http://downloads.hipchat.com/linux/apt stable main
# spotify
deb http://repository.spotify.com stable non-free
" > /etc/apt/sources.list.d/atlassian-hipchat.list
```

# get keys

```
# hipchat
wget -O - https://www.hipchat.com/keys/hipchat-linux.key | apt-key add -
# spotify
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
```

# apt-get - programy
```
sudo apt-get install mysql-server terminator vim git transmission skype vlc gimp apcalc bpython chromium-browser firefox wine virtualbox libreoffice hipchat spotify-client ubuntuone-client ubuntuone-control-panel ubuntuone-client-proxy ubuntuone-control-panel-qt p7zip npm python
```

# apt-get - biblioteki
```
sudo apt-get install libxml2-dev libxslt-dev g++ make checkinstall python-virtualenv libmysqlclient-dev python-mysqldb python-dev
```

# npm
```
sudo npm install -g coffee-script less
```

# Other

* Node.js
  ```
  wget -N http://nodejs.org/dist/node-latest.tar.gz
  tar xzvf node-latest.tar.gz && cd node-v*
  ./configure
  checkinstall #(remove the "v" in front of the version number in the dialog)
  sudo dpkg -i node_*
  ```

* [PyCharm](https://www.jetbrains.com/pycharm/download/index.html)
* [Opera](http://www.opera.com/download/guide/?os=linux)
* [Vagrant](http://downloads.vagrantup.com/]



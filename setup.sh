#!/bin/bash

#add PPAs
sudo add-apt-repository ppa:webupd8team/sublime-text-3
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#install things that aren't on PPAs
#probably ought to put these downloads somewhere more tidy than home.
#rstudio
wget http://download1.rstudio.org/rstudio-0.98.484-amd64.deb
sudo gdebi rstudio-0.98.484-amd64.deb
#docker
wget -qO- https://get.docker.com/ | sh

#RVM
curl -sSL https://get.rvm.io | bash -s stable --rails --ruby

#node and npm
curl -sL https://deb.nodesource.com/setup | sudo bash -

sudo apt-get update

#install things
sudo apt-get install arduino \
                     blender \
                     build-essential \
                     bundler \
                     cups \
                     curl \
                     fdupes \
                     gdebi-core \
                     git \
                     golang \
                     google-chrome-stable \
                     imagemagick \
                     inkscape \
                     ipython \
                     libapparmor1 \
                     mysql-workbench \
                     nodejs \
                     parted
                     python-bs4 \
                     python-html5lib \
                     python-pip \
                     r-base \
                     rstudio \
                     ruby \
                     rubygems \
                     samba \
                     skype \
                     sl \
                     sublime-text-installer \
                     virtualbox \
                     wget


#settings
#git
git config --global user.name "Ben Doherty"
git config --global user.email "ben@notionparallax.co.uk"
git config --global credential.helper 'cache --timeout=3600' #cache password for 15 minutes
git config --global color.ui auto #colour the output in git
git config --global core.editor "subl" #TODO this freaks out a bit, "Aborting commit due to empty commit message." not sure how to fix yet.

sudo apt-get upgrade -y

sudo gem update --system

git clone https://github.com/bvn-architecture/transformative.git
git clone https://github.com/bvn-architecture/shackleton.git
git clone https://github.com/bvn-architecture/FuturesForum.git
git clone https://github.com/notionparallax/ShadowWolf.git
git clone https://github.com/notionparallax/start.git

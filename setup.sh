#!/bin/bash

#add PPAs
sudo add-apt-repository ppa:webupd8team/sublime-text-3

sudo apt-get update

#install things
sudo apt-get install sublime-text-installer git r-base chromium-browser gdebi-core libapparmor1 sl

#install things that aren't on PPAs
#probably ought to put these downloads somewhere more tidy than home.
#rstudio
wget http://download1.rstudio.org/rstudio-0.98.484-amd64.deb
sudo gdebi rstudio-0.98.484-amd64.deb
#RVM

#settings
#git
git config --global user.name "Ben Doherty"
git config --global user.email "ben@notionparallax.co.uk"
git config --global credential.helper cache #cache password for 15 minutes
git config --global color.ui auto #colour the output in git

sudo apt-get upgrade -y
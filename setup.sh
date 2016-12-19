#!/bin/bash

#add PPAs
sudo add-apt-repository ppa:webupd8team/sublime-text-3 #sublime text
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-add-repository ppa:git-core/ppa #latest git
#latest ruby
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:brightbox/ruby-ng


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
#I know you can install these things all in one command, but I'm hoping that many commands will be more robust to failure
sudo apt-get install arduino 
sudo apt-get install blender 
sudo apt-get install build-essential 
sudo apt-get install bundler 
sudo apt-get install cups 
sudo apt-get install curl 
sudo apt-get install fdupes 
sudo apt-get install gdebi-core 
sudo apt-get install git 
sudo apt-get install golang 
sudo apt-get install google-chrome-stable 
sudo apt-get install imagemagick 
sudo apt-get install inkscape 
sudo apt-get install ipython 
sudo apt-get install libapparmor1 
sudo apt-get install mysql-workbench 
sudo apt-get install nodejs 
sudo apt-get install part 
sudo apt-get install python-bs4 
sudo apt-get install python-html5lib 
sudo apt-get install python-pip 
sudo apt-get install r-base 
sudo apt-get install rstudio 
sudo apt-get install ruby2.3  #check version wanted here: https://www.brightbox.com/docs/ruby/ubuntu/ 
sudo apt-get install ruby2.3-dev #numbers must match above
sudo apt-get install rubygems 
sudo apt-get install samba 
sudo apt-get install skype 
sudo apt-get install sl 
sudo apt-get install sublime-text-installer 
sudo apt-get install virtualbox 
sudo apt-get install wget

#gems
sudo gem install 'github-pages'
sudo gem install scss_lint


#settings
#git
git config --global user.name "Ben Doherty"
git config --global user.email "ben@notionparallax.co.uk"
git config --global credential.helper 'cache --timeout=3600' #cache password for 15 minutes
git config --global color.ui auto #colour the output in git
git config --global core.editor "subl" --wait #TODO this freaks out a bit, "Aborting commit due to empty commit message." not sure how to fix yet.

sudo apt-get upgrade -y

sudo gem update --system

# git clone https://github.com/bvn-architecture/transformative.git
# git clone https://github.com/bvn-architecture/shackleton.git
# git clone https://github.com/bvn-architecture/FuturesForum.git
# git clone https://github.com/notionparallax/ShadowWolf.git
# git clone https://github.com/notionparallax/start.git

# sublime package settings
# {
# 	"bootstrapped": true,
# 	"in_process_packages":
# 	[
# 	],
# 	"installed_packages":
# 	[
# 		"Alignment",
# 		"ColorPicker",
# 		"Git",
# 		"Git Config",
# 		"GitGutter",
# 		"Github Tools",
# 		"Google Spell Check",
# 		"HTML-CSS-JS Prettify",
# 		"Jekyll",
# 		"MarkdownEditing",
# 		"Package Control",
# 		"SCSS",
# 		"SideBarEnhancements",
# 		"SublimeLinter",
# 		"SublimeLinter-contrib-scss-lint"
# 	]
# }

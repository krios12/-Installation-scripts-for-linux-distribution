#!/bin/bash/

sudo apt-get update -y

##wymagane biblioteki##
apt-get install libcurl4-gnutls-dev libexpat1-dev gettext \
  libz-dev libssl-dev



 tar -zxf git-1.6.0.5.tar.gz
 cd git-1.6.0.5
 make prefix=/usr/local all
 sudo make prefix=/usr/local install

## Git ##
#echo '###Installing Git..'
#sudo apt-get install git -y

# Git Configuration
echo '###Congigure Git..'

echo "Enter the Global Username for Git:";
read GITUSER;
git config --global user.name "${GITUSER}"

echo "Enter the Global Email for Git:";
read GITEMAIL;
git config --global user.email "${GITEMAIL}"

echo 'Git has been configured!'
git config --list

git clone git://git.kernel.org/pub/scm/git/git.git



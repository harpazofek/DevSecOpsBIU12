# your solution here...
#!bin/bash

#greeting the user
echo "hello" $USER

#check & print how many packages are outdated
UPDATE= /usr/lib/update-notifier/apt-check --human-readable
echo $UPDATE

#create file .token and check permissions ststus
touch $HOME/.token
CURPERM=$(stat -c "%a" .token)

APERM='600'

if [ $CURPERM != $APERM ]
  then
      echo "Warning: .token file has too wide permissions"
fi

#setting up an environment variable
COURSE_ID=devsecops12

#change the default shell to zsh
chsh -s /usr/bin/zsh

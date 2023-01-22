#!/usr/bin/bash
#            Installation

if [ "$EUID" -ne 0 ]
  then echo "Please run as root."
  exit
fi

function cheak_install() {

    if ! $1 -v &> /dev/null
    then
        apt install $1 -y
    else
        echo "$1 alredy exists."
    fi
}

# make
cheak_install "make" 
# docker
if ! docker -v &> /dev/null
then
    apt install docker.io -y
    # docker permistion for none root user
    chmod 666 /var/run/docker.sock
else
    echo "docker alredy exists."
fi

# docker-compose
cheak_install "docker-compose"

# set domane name
FILE="/etc/hosts"
STRING="ahmaidi.42.fr"
if grep -q "$STRING" "$FILE"
then
        echo -e "Domane name alredy exists."
else
    echo "127.0.0.1    $STRING" >> $FILE
    echo "Need to restart host!"
fi

# add user to root and docker group
usermod -a -G sudo $USER
usermod -a -G docker $USER

#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node

#create our working directory if it doesnt exist
dirname="/home/ec2-user/express-app"
if [[ ! -d "$dirname" ]]
then
    if [ -L $dirname]
then
    echo "File doesn't exist. Creating now"
    mkdir ./$dirname
    echo "File created"
    else
        echo "File exists"
    fi
fi

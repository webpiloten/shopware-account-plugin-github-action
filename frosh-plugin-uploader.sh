#!/bin/bash

VERSION=$1
COMMAND=$2
NAME=$3

wget "https://github.com/FriendsOfShopware/FroshPluginUploader/releases/download/$VERSION/frosh-plugin-upload.phar" -O frosh-plugin-upload.phar

if [ $COMMAND == 'validate' ] || [ $COMMAND == 'upload' ]
then
  php frosh-plugin-upload.phar ext:zip $NAME
else
ls
fi

if [ $COMMAND == 'validate' ]
then
  php frosh-plugin-upload.phar ext:validate --create $(pwd)/*.zip
fi

if [ $COMMAND == 'update' ]
then
  php frosh-plugin-upload.phar ext:update $(pwd)/$NAME/
fi

if [ $COMMAND == 'upload' ]
then
  php frosh-plugin-upload.phar --skipCodeReview ext:upload $(pwd)/*.zip
fi

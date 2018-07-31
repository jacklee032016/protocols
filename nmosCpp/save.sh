# /bin/bash

find . -name Linux.* -prune -exec rm -r -f {} \;

MODULE=nmos

PWD=`TZ=CN date -u "+%Y_%m_%d"`

BUILDTIME=$PWD


cd ..; tar -cvjf $MODULE.$BUILDTIME.tar.bz2 $MODULE



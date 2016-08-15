#!/bin/bash
file $1|grep compressed >/dev/null
if [ "$?" == "0" ];
then
    mkdir /tmp/flashplayer
    tar xf $1 -C /tmp/flashplayer
    cp -a /tmp/flashplayer/libflashplayer.so /usr/lib/mozilla/plugins
    cp -a /tmp/flashplayer/usr/* /usr
fi

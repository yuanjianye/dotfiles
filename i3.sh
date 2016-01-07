#!/bin/bash
export HOME=/root
export DISPLAY=":1"
export LANG="zh_CN.UTF-8"
X :1 &
sleep 1
mate-settings-daemon &
sleep 1
i3
sleep 3
fcitx &


#!/bin/bash
export HOME=/root
export DISPLAY=":1"
export LANG="zh_CN.UTF-8"
export LANGUAGE="zh_CN.UTF-8"
export CLUTTER_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT4_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export TEXTDOMAIN=fcitx
export XMODIFIERS='@im=fcitx'
X :1 &
sleep 1
i3 &
sleep 1
mate-settings-daemon &
sleep 1
fcitx &
sleep 1
pulseaudio --start

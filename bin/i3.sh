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
export TZ='Asia/Shanghai'
export DBUS_SESSION_BUS_ADDRESS='unix:path=/run/user/0/bus'
export XDG_RUNTIME_DIR="/run/user/0"
export XDG_SEAT="seat0"
export XDG_SESSION_ID="c1"
export XDG_VTNR="1"

/usr/lib/systemd/systemd --user &
X :1 &
sleep 1
i3 &
/usr/lib/mate-settings-daemon/mate-settings-daemon &
pulseaudio --start
synergyc 172.16.55.220
fcitx &
rmmod pcspkr
sleep 1
i3-msg "exec --no-startup-id mate-terminal"

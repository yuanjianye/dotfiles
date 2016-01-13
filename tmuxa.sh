#!/bin/bash
tmux list-sessions 
if [ "$?" == "0" ];
then
    exec tmux a
else
    exec tmux
fi

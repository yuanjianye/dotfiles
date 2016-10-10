#!/bin/bash
tmux list-sessions 
if [ "$?" == "0" ];
then
    exec tmux -2 a
else
    exec tmux -2
fi

#!/bin/bash
# works for mate terminals linux mint
# ridiculously simple script for tailing terminals. Can't be bothered to do it manually :P
# TODO get size screen and refactor sizes acordingly to the current screan
# to execute: bash tl.sh

echo "Select one of the options:"
echo "1. three terminals (three normal terminal)"
echo "2. three terminals (two normal and one htop)"
read -p "option number: " option

if [ "$option" == "1" ] ; then
    mate-terminal --geometry 130x33+1000+0 --hide-menubar --title="folder" --working-directory=./Documents/
    mate-terminal --geometry 130x35+1000+610 --hide-menubar --title="exec" --working-directory=./Documents/
    mate-terminal --geometry 139x180+0+2 --hide-menubar --title="main" --working-directory=./Documents/
elif [ "$option" == "2" ] ; then
    mate-terminal --geometry 130x33+1000+0 --hide-menubar --title="resource" --command "bash -c htop"
    mate-terminal --geometry 130x35+1000+610 --hide-menubar --title="exec" --working-directory=./Documents/
    mate-terminal --geometry 139x180+0+2 --hide-menubar --title="main" --working-directory=./Documents/
else
    echo "select a number (1 or 2)"
fi

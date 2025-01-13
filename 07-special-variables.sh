#!/bin/bash

echo " All variables Passes :$@"
echo " Number of variables passed $#"
echo "Present working directory : $PWD"
echo "Home directory of the current USER : $HOME"
echo "which user is running the script :$USER"
echo " Process id of the current script : $$"

sleep 60 &  # running in backgroub &

echo " process id of last command in background : $!"
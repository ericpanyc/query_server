#!/usr/bin/bash
if [ -z "$1" ]; then
    echo Current Server: $HOSTNAME
elif [ $1 = '-l' ]; then
    echo Current Server: $USER'@'$HOSTNAME
elif [ $1 = '--help' ]; then
    echo 'Usage: query_server.sh [OPTION]' 
    echo ""
    echo 'Prints the name of the current server as: "Current Server:[servername]'
    echo ""
    echo '   -l  Prints the username with the servername'
    echo ""
    echo 'Exit status:'
    echo ' 0  if OK,'
    echo ' 1  Problem with command line'
else 
    echo 'exit'
fi

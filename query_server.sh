#!/usr/bin/bash
if [ -z "$1" ]; then echo Current Server: $HOSTNAME
else
    
    OPTS=`getopt -o l --long help -n 'parse-options' -- "$@"`
    if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; exit 1 ; fi
    eval set -- "$OPTS"

    help_message="Usage: query_server.sh [OPTION]\n\nPrints the name of the current server as: Current Server:[servername]\n\n   -l  Prints the username with the servername\n\nExit status:\n 0  if OK,\n 1  Problem with command line"

    while true; do
        case "$1" in
            -l ) echo Current Server: $USER@$HOSTNAME; shift ;;
            --help ) echo -e $help_message; shift ;;
            * ) exit 1 ;;
        esac
    done
fi

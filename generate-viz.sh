#!/bin/bash

INPUT=$1

SVG_PATH=$ELITRACK_WEB_PATH


if [ -z "$SVG_PATH" ]; then
    print "ERROR : Please configure Elitrack Core root path e.g. [/var/www/html] .\n"
    print "NOTICE: Did you set ELITRACK_WEB_PATH env variable?.\n"
    exit 1
fi


if [ -z "$1" ]; then
    print "ERROR: No input file provided.\n"
    print "USAGE: generate-viz <file/path>\n"
    exhit 1
fi

xhp2flamegraph -f $FILE | flamegraph > $SVG_PATH/web/images/flamegraph.svg
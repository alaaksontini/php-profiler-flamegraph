#!/bin/bash

INPUT=$1

SVG_PATH=$2


if [ -z "$INPUT" ]; then
    print "ERROR: No input file provided.\n"
    print "USAGE: lightflame <file/path>\n"
    exit 1
fi

if [ -f "$INPUT" ]; then
    print "ERROR: file does not exist.\n"
    exit 1
fi

if [ -z "$SVG_PATH" ]; then
    print "ERROR : Please specify output path e.g. [/var/www/html/web/images] .\n"
    exit 1
fi

xhp2flamegraph -f $INPUT | flamegraph > $SVG_PATH/flamegraph.svg

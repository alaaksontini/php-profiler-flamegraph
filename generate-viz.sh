#!/bin/bash

INPUT=$1

if [ -z "$1" ]; then
    print "ERROR: No input file provided.\n"
    print "USAGE: generate-viz <file/path>"
fi

DATE_PREFIX=$(date +"%Y%m%d_%H%M%S")

xhp2flamegraph -f $FILE | flamegraph > /tmp/profiler/svg/"$DATE_PREFIX"_GRAPH.svg
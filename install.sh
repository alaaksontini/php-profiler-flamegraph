#!/bin/bash

WD=$(pwd)

PARSER_DIR="${WD}/xhprof-flamegraph"
FLAMEGRAPH_DIR="${WD}/FlameGraph"

PARSER_SL=/usr/bin/xhp2flamegraph
FLAMEGRAPH_SL=/usr/bin/flamegraph

if [ -d "$PARSER_DIR" ]; then
  rm -rf $PARSER_DIR
fi

if [ -d "$FLAMEGRAPH_DIR" ]; then
  rm -rf $FLAMEGRAPH_DIR
fi

if [ -L "$PARSER_SL" ]; then
  rm $PARSER_SL
fi

if [ -L "$FLAMEGRAPH_SL" ]; then
  rm $FLAMEGRAPH_SL
fi

git clone https://github.com/takahashi-yugo/xhprof-flamegraph.git

git clone https://github.com/brendangregg/FlameGraph.git


# Create symplinks to /usr/bin

ln -s $WD/xhprof-flamegraph/xhprof-flamegraph /usr/bin/xhp2flamegraph
ln -s $WD/FlameGraph/flamegraph.pl /usr/bin/flamegraph

#!/bin/bash

WD=$(pwd)

PARSER_DIR="${WD}/xhprof-flamegraph"
FLAMEGRAPH_DIR="${WD}/FlameGraph"

PARSER_SL=/usr/bin/xhp2flamegraph
FLAMEGRAPH_SL=/usr/bin/flamegraph

if [ ! -d "$PARSER_DIR" ]; then
  git clone https://github.com/takahashi-yugo/xhprof-flamegraph.git
else
  echo -e "Skipping the cloning of xhprof-flamegraph, directory exists"
fi

if [ ! -d "$FLAMEGRAPH_DIR" ]; then
  git clone https://github.com/brendangregg/FlameGraph.git
else
  echo -e "Skipping the cloning of FlameGraph, directory exists"
fi

if [ -L "$PARSER_SL" ]; then
  rm $PARSER_SL
fi

if [ -L "$FLAMEGRAPH_SL" ]; then
  rm $FLAMEGRAPH_SL
fi

cd xhprof-flamegraph
composer install

cd ..

# Create symlinks to /usr/bin

ln -s $WD/xhprof-flamegraph/xhprof-flamegraph /usr/bin/xhp2flamegraph
ln -s $WD/FlameGraph/flamegraph.pl /usr/bin/flamegraph
ln -s $WD/generate-viz.sh /usr/bin/lightflame

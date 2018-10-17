# PHP Lighter


This is a simple script that leverages multiple projects to generate flamegraphs from Xhprof output data format.

here are links to the open source projects

* [takahashi-yugo/xhprof-flamegraph](https://github.com/takahashi-yugo/xhprof-flamegraph)
* [brendangregg/FlameGraph](https://github.com/brendangregg/FlameGraph)

# Installation

## Prerequisites

This tool relies on tideways php extension to collect profiling data. See [tideways/php-xhprof-extension](https://github.com/tideways/php-xhprof-extension) for more details on how to install and use it.

## Installation

Clone the project and cd into it. Run the install script like so:

```shell
$ ./install.sh
```

This should clone the two projects it depend on. Next  you'll need to cd into the `xhprof-flamegraph` directory and install the dependencies.

```shell
$ cd xhprof-flamegraph
$ composer install
```

Php-lighter should be ready to use now

## Usage

You can simply run:
```shell
$ lightflame path/to/sample ouput/path
```

A flamegraph.svg file should be genereated under `output/path`
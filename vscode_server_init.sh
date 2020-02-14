#!/bin/sh

[ $# -gt 0 ] && arguments="$@" || arguments="--auth none"

/vscode/code-server $arguments

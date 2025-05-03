#!/usr/bin/env bash

args="."
if [[ $# -ne 0 ]]; then
    args="$@"
fi

flake8 ${args} | lintly --token "$INPUT_TOKEN" --fail-if="$INPUT_FAILIF"

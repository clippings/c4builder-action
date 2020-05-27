#!/bin/sh -l

config_path="${C4BUILDER_CONFIG_PATH:-.}"

cd "$config_path"

if [[ ! -r ".c4builder" ]]; then
    echo ".c4builder configuration file was not found in $config_path" >&2
    exit 1
fi

c4builder

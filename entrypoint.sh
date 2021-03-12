#!/bin/sh -l

yarn install
# Get outdated dependencies as JSON file, ignore 1st line of output which only contains a table legend
DEPRECATED=$(yarn outdated --json | sed -n 2p)
echo "::set-output name=deprecated::$DEPRECATED"
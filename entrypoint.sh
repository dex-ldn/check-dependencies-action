#!/bin/sh -l

yarn install
DEPRECATED=$(yarn outdated --json)
echo "::set-output name=deprecated::$DEPRECATED"
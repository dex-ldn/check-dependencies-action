#!/bin/sh -l

yarn install
DEPRECATED=`yarn outdated --color`
echo "::set-output name=deprecated::$DEPRECATED"
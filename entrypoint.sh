#!/bin/sh -l

yarn install
DEPRECATED=`yarn outdated --color`
echo "$DEPRECATED"
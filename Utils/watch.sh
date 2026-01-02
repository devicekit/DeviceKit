#!/usr/bin/env bash

BASEDIR=$(dirname "$0")

# brew install fswatch
fswatch $BASEDIR/../Source/Device.swift.gyb | xargs -n1 -I{} $BASEDIR/change.sh

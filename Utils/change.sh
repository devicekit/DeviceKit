#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
$BASEDIR/gyb --line-directive '' -o $BASEDIR/../Source/Device.generated.swift $BASEDIR/../Source/Device.swift.gyb

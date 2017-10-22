#!/bin/bash

path=$1
app=$2
action=$3

git diff HEAD --quiet -- "$path" || git commit "$path" -m "Automatic: $action assets to $app"
#git diff HEAD --quiet -- "$path" || git push origin

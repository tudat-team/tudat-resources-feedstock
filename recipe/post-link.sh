#!/bin/bash

# set hidden path
HIDDEN_PATH=$HOME/.tudat

# create destination hidden folder & resource folder
mkdir -p "$HIDDEN_PATH/resource/"

# attempt to copy resources to home folder
cp -a "$PREFIX"/resource/. "$HIDDEN_PATH"/resource/

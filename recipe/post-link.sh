#!/bin/bash

# create destination resource folder
mkdir -p $HOME/.tudat/resource/

# attempt to copy resources to home folder
mv $PREFIX/resource/* $HOME/.tudat/resource/

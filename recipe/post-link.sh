#!/bin/bash

# *********************************************************** 
#
# This script downloads the raw data files distributed manually as release on 
# the tudat-resources Github repository and places them in $HOME/.tudat/resource
# directory on the host machine. 

# This script is written precisely to download the data files distributed 
# directly as GitHub releases, because in the future, Github would block pushing
# data files > 100 MB to the repository, so they need to be distributed as
# releases-only. 
# In order for this script to function correctly, upload only a single zip file
# with the name <resource> containing all the sub directories with the data 
# files, i.e., the resource/ in master, or the data/ in develop.
#
# The script is run automatically by conda as the last step in the installation
# process of the conda package tudat-resources on the host machine.
# 
# **********************************************************


PKG_VERSION=v1.2.1.dev5
RESOURCE_GITHUB_URL="https://github.com/niketagrawal/tudat-resources/releases/download/$PKG_VERSION/resource.tar.gz"

# Target location on the host machine where the data files will be downloaded
TARGET_LOCATION=$HOME/.tudat/

# Remove target directory if already present
# Add code

# Create the target directory on the host machine
mkdir -p $TARGET_LOCATION

cd $TARGET_LOCATION

# Fetch the Github release containing the raw data files
curl -JLO $RESOURCE_GITHUB_URL

# Unpack the content and place it in resource/
tar -xvf resource.tar.gz

# [Optional] Delete the original tar file
rm -rf resource.tar.gz
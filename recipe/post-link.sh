#!/bin/bash
RESOURCE_GIT_URL="https://github.com/tudat-team/tudat-resources.git"
RESOURCE_GIT_REV=$(<git_rev.txt)

# set hidden path
HIDDEN_PATH=$HOME/.tudat
TARGET_PATH="$HIDDEN_PATH"/resource/
TEMP_PATH=./tmp/

# create destination hidden folder & resource folder
mkdir -p $TARGET_PATH
mkdir -p $TEMP_PATH

cd $TEMP_PATH

# fetch get only the target sha1
git init
git remote add origin $RESOURCE_GIT_URL
git fetch origin ${RESOURCE_GIT_REV}
git reset --hard FETCH_HEAD

# copy the resource subdirectory to
cp -a ./resource/. $TARGET_PATH

# go back 2 levels
cd ../

# delete the tmp directory
rm -rf $TEMP_PATH


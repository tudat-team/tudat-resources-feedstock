#!/bin/bash
RESOURCE_GIT_URL="https://github.com/tudat-team/tudat-resources.git"
RESOURCE_GIT_REV="c1306808bc98614b717599627e7b22e0a20054eb"
# set hidden path
HIDDEN_PATH=$HOME/.tudat
TARGET_PATH="$HIDDEN_PATH"/resource/
TEMP_PATH=./tmp/

# create destination hidden folder & resource folder
mkdir -p $TARGET_PATH
mkdir -p $TEMP_PATH

# Debugging 101 
echo "INSIDE_RECIPE_DIR: $(ls ${RECIPE_DIR})"
echo "RESOURCE_GIT_REV ${RESOURCE_GIT_REV}"
echo "RECIPE_DIR ${RECIPE_DIR}"

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

# Fetch the Github release containing the raw data files
curl -JLO $RESOURCE_GITHUB_URL

# Unpack the content and place it in resource/
tar -xvf resource.tar.gz

# [Optional] Delete the original tar file
rm -rf resource.tar.gz

# Directory within the Conda environment for external repository
TARGET_DIR="$CONDA_PREFIX/share/external-repo"
mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR"

# Clone the repository
git clone https://github.com/NASA-PDS/PyTrk234.git .

# Install the cloned repository into the environment
pip install .

#!/bin/sh
# Script to download all the Gazebo Models available at http://models.gazebosim.org

# Download all model archive files
wget -l 2 -nc -r "http://models.gazebosim.org/" --accept gz

# This is the folder into which wget downloads the model archives
cd "models.gazebosim.org"

# Extract all model archives
for i in *
do
  tar -zvxf "$i/model.tar.gz"
done

# Copy extracted files to the local model folder
if [ ! -d $HOME/.gazebo/models/ ]; then
	mkdir $HOME/.gazebo/models;
fi;

cp -vfR * "$HOME/.gazebo/models/"

echo "Cleaning up temporary files..."
cd .. && rm -rf "models.gazebosim.org"
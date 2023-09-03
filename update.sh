#!/bin/bash

# Define the expected version string
expected_version="0.0.3"

# Path to the version file
version_file="version/version.ver"

# Read the current version from the file
current_version=$(cat "$version_file")

# Compare the current version with the expected version
if [ "$current_version" = "$expected_version" ]; then
    echo "VIDEA is up to date."
else
	sudo rm VIDEA
	sudo rm  version/version.ver
	sudo mv update_file/VIDEA_update/VIDEA ./
	sudo mv update_file/VIDEA_update/version.ver ./
	sudo rm -r update_file
	echo "Updated successfully!"
fi

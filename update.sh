#!/bin/bash

# Define the expected version string
expected_version="0.0.4"

# Path to the version file
version_file="version/version.ver"

# Read the current version from the file
current_version=$(cat "$version_file")

# Compare the current version with the expected version
if [ "$current_version" = "$expected_version" ]; then
    echo "VIDEA is up to date."
    sudo rm -r VIDEA_update
    sudo rm update.sh
else
	sudo rm VIDEA
	sudo rm  version/version.ver
	sudo mv VIDEA_update/VIDEA ./
	sudo mv VIDEA_update/version.ver version
	sudo rm -r VIDEA_update
 	sudo chmod +x VIDEA
	sudo rm update.sh
	echo "Updated successfully!"
fi

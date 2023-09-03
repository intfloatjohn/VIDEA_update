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
    rm VIDEA
    rm  version/version.ver
    mv update_file/VIDEA_update/VIDEA ./
    mv update_file/VIDEA_update/version.ver ./
    rm -r update_file
    echo "Updated successfully!"
fi

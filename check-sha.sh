#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <version>"
    exit 1
fi

VERSION=$1
TEMP_FILE="/tmp/capjoy_macos_arm64.tar.gz"
FORMULA_FILE="capjoy.rb"
URL="https://github.com/tokuhirom/capjoy/releases/download/$VERSION/capjoy_macos_arm64.tar.gz"

# Download the specified version of capjoy
curl -L -o $TEMP_FILE $URL

# Calculate the SHA-256 hash of the downloaded file
SHA256=$(shasum -a 256 $TEMP_FILE | awk '{ print $1 }')

# Update the capjoy.rb formula file
perl -i -pe "s!url \".*\"!url \"$URL\"!" $FORMULA_FILE
perl -i -pe "s!sha256 \".*\"!sha256 \"$SHA256\"!" $FORMULA_FILE

echo "Updated $FORMULA_FILE with version $VERSION and sha256 $SHA256."


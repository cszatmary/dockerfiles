#!/bin/bash

# This script finds all the images names that were modified in the last commit
# It excludes blacklisted items so we don't try building and pushing images for those

BLACKLIST=".circleci README.md"
NAMES=$(git diff --name-only HEAD^ HEAD | cut -d '/' -f 1)
for NAME in $NAMES; do
    # Make sure it's not in the blacklist and it exists
    if ! echo "$BLACKLIST" | grep -F -q -w "$NAME" && [[ -d "$NAME" ]]; then
        echo "$NAME"
    fi
done

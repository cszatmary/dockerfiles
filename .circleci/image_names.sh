#!/bin/bash

# This script finds all the images names that were modified in the last commit
# It excludes non-dockerfile items so we don't try building and pushing images for those

EXCLUDE=".circleci README.md"
NAMES=$(git diff --name-only --diff-filter=ACMR HEAD^ HEAD | cut -d '/' -f 1)
for NAME in $NAMES; do
    # Make sure it's not in the exclude list and it exists
    if ! echo "$EXCLUDE" | grep -F -q -w "$NAME"; then
        echo "$NAME"
    fi
done

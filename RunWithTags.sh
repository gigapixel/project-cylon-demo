#!/bin/bash

echo -n "Enter tags to run > "
read tags
echo "Running with tags: $tags"

behave --logging-level INFO --color --no-source --no-skipped --tags=$tags



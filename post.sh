#!/bin/bash

CURRENT_DATE=$(date +%F)

POST_COUNT=$(ls content/posts | wc -l)
let "POST_COUNT += 1"

FORMATTED_POST_COUNT=$(printf "%04d" $POST_COUNT)

FILENAME="$CURRENT_DATE-$FORMATTED_POST_COUNT.md"

hugo new posts/$FILENAME
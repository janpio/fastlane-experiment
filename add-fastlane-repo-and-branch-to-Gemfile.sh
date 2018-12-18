#!/bin/sh

echo "$REPO"
echo "$BRANCH"
if [ -n "$REPO" ] && [ -n "$BRANCH" ]; then
    SEARCH='gem "fastlane".*'
    echo "$SEARCH"
    REPLACE="gem \"fastlane\", :git => \"$REPO\", :branch => \"$BRANCH\""
    echo "$REPLACE"
    SEDSTRING="s@$SEARCH@$REPLACE@"
    echo "$SEDSTRING"
    sed -i "$SEDSTRING" Gemfile
fi

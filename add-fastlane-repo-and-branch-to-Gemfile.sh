#!/bin/sh
if [ -n "$REPO" ] && [ -n "$BRANCH" ]; then
    SEARCH='gem "fastlane".*'
    REPLACE="gem \"fastlane\", :git => \"$REPO\", :branch => \"$BRANCH\""
    SEDSTRING="s@$SEARCH@$REPLACE@"
    sed -i -e "$SEDSTRING" Gemfile
fi

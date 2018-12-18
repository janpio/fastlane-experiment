#!/bin/sh

if [ -n "$REPO" ] && [ -n "$BRANCH" ]; then
    SEARCH='gem "fastlane".*'
    REPLACE="gem \"fastlane\", :git => \"$REPO\", :branch => \"$BRANCH\""
    sed -i "s@$SEARCH@$REPLACE@" Gemfile
fi

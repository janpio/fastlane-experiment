#!/bin/sh

if [ -n "$REPO" ] && [ -n "$BRANCH" ]; then
    SEARCH='gem "fastlane".*'
    echo $SEARCH
    REPLACE="gem \"fastlane\", :git => \"$REPO\", :branch => \"$BRANCH\""
    echo $REPLACE
    sed -i "s@$SEARCH@$REPLACE@" Gemfile
fi
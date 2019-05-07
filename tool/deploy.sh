#!/bin/bash

# Fast fail the script on failures.
set -e

if [ "$TRAVIS_PULL_REQUEST" = "false" ]; then
  if [ "$TRAVIS_BRANCH" = "master" ]; then
    echo "Deploying to Firebase."

    npm install --global firebase-tools@6.8.0
    firebase -P webdev-dartlang-org --token "$FIREBASE_TOKEN" deploy
  fi
fi
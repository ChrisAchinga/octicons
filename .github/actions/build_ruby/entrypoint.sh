#!/bin/sh -l

set -e

cd ./lib/$*

echo "**************** Copying assets files to build directory ****************"
cp -R ../build lib/

echo "**************** Installing ****************"
bundle install

echo "**************** Linting ****************"
bundle exec rubocop

echo "**************** Testing  ****************"
bundle exec rake
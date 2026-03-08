#!/bin/bash

cd /workspace
BUNDLE_FROZEN=1 bundle install
echo "alias serve='bundle exec jekyll serve'" > ~/.bashrc
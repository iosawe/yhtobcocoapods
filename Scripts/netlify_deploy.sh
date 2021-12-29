#!/bin/bash
set -eo pipefail

mkdir _site || true
mkdir _site/Specs || true
# generate sharded index
bundle exec ruby Scripts/create_pods_and_versions_index.rb _site

# add redirects to GitHub 我要注释掉
#cp Scripts/netlify_redirects.txt _site/_redirects
#我加的
cp -r Specs/* _site/Specs/
cp ./*.yml _site/

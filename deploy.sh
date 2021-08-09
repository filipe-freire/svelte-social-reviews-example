#!/usr/bin/env sh

# abort on errors
set -e
npm run build
cd dist

git init
git add -A
git commit -m 'deploy'


# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:filipe-freire/svelte-social-reviews-example.git main:gh-pages

cd -

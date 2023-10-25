#!/bin/sh

set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"
rm -rf public
hugo -t cactus
git add -A

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

git commit -m "$msg"
git push origin master
git subtree push --prefix=public git@github.com:ovalves/ovalves.github.io.git gh-pages
# git push origin `git subtree split --prefix public master`:gh-pages --force
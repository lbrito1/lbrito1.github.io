#!/bin/bash

# These variables are useful in case you use a different repo for different branches
# E.g., I do that to push local branches to my personal blog's repo, which is
# different from this one.
local_development_branch="development"
local_master_branch="master"
remote="origin"

# Make sure we're in the correct dir
git checkout $local_development_branch

# Compile output pages/assets
nanoc

# # Update remote
# git add .
# git commit -m "Updates development branch. (automated commit)"
# git push $remote $local_development_branch:development

# # Switch to Github Pages branch
# git checkout $local_master_branch
# git rm * -r
# git clean -df

# # Copy nanoc output to root
# git checkout $local_development_branch output/
# git checkout $local_development_branch README.md
# cp -r output/* ./
# rm -rf ./output/*
# rm -rf ./tmp/

# # Send changes to remote (production branch)
# git add .
# git commit -m "Builds site. (automated commit)"

# # Push & deploy
# git push $remote $local_master_branch:master

# # Pop files
# git checkout $local_development_branch

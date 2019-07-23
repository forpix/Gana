#!/bin/bash

# This fetches one branch from the remote repository, merges with the specified local branch
# and then pushes to the remote repository (assumes there are no conflicts)

if [ $# != 2 ] 
then
    echo "Usage : git sync https://github.com/forpix/Remote_Machine.git master"
    exit 1
fi

current_branch=`git branch 2> /dev/null | grep '*' | sed 's/\* //g'`

if [ $current_branch != $2 ]                                          
then
    echo "You are currently on branch '$current_branch', switch to branch '$2' before executing this command"
    exit 1
fi

echo "Fetching remote $1"
git fetch $1

echo "Merging $1/$2 on to current branch $2"
git merge $1/$2

echo "Pushing $2 to github"
git push

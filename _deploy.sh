#!/bin/bash

# Start ssh agent and add key
eval "$(ssh-agent -s)" # Start the ssh agent
chmod 600 github_deploy_key
ssh-add github_deploy_key


if [[ $TRAVIS_BRANCH == 'master' ]]
then
  # configure your name and email if you have not done so
  git config --global user.email "will@bowdit.ch"
  git config --global user.name "willbowditch"

  # clone the repository to the book-output directory
  git clone -b gh-pages \
    git@github.com:departmentfortransport/ds-r-training.git \
    book-output
  cd book-output
  git rm -rf *
  cp -r ../_book/* ./
  git add --all *
  git commit -m "Travis built book"
  git push -q origin gh-pages
else
  echo "Not publishing as not in MASTER branch"
fi
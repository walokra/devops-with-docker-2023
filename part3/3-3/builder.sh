#!/bin/bash

# e.g. walokra/devops-with-docker-2023-part3-express-app walokra/devops-with-docker-part3-express-app

# check that 2 parameters are given
if [ $# -ne 2 ]; then
  echo "Usage: $0 <github repository name> <docker hub repository name>"
  exit 1
fi

# clone git repository and move to the directory
git clone https://github.com/$1.git
# parse the repository name from github repository url
repo_name=$(echo $1 | cut -d'/' -f2)
cd $repo_name

# build docker image
docker build -t $2 .

# push docker image to docker hub
docker push $2

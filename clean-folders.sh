#!/bin/bash

echo "Removing all terraform files from all folders of the Repository"

find . -type f -name "*.tfstate*" -print -delete;

find . -type f -name "*.lock.*" -print -delete;

find . -type d -name ".terraform" -exec rm -r "{}" +;

find . -type d -empty -print -exec rm -r "{}" +;

echo "Code will be Pushed to Github Repository"



# echo "Add files and do local commit"

# git add .

# git commit -am "Welcome to Nishanth Class, Modified Code"

# echo "Pushing to Github Repository"

# git push

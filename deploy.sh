#!/bin/bash

docker login -u bucky0838 -p dckr_pat_79C2h7PDN21tTnkWp-4-xSNlHIg

if [[ $GIT_BRANCH == "origin/main" ]]; then
    sh "chmod +x build.sh"
    sh "./build.sh"
    docker tag php-image bucky0838/testing
    docker push bucky0838/testing

else
    echo "Deploy Error. Image not pushed."
fi

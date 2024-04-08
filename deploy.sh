#!/bin/bash

if [[ $GIT_BRANCH == "origin/main" ]]; then
    chmod +x build.sh
    ./build.sh
    docker tag php-image bucky0838/testing
    docker push bucky0838/testing

else
    echo "Deploy Error. Image not pushed."
fi

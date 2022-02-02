#!/bin/bash

echo "***********************"
echo "****Pushing Image******"
echo "***********************"

IMAGE="maven-test-project"

echo "****Login*****"

docker login -u rahulpaithane -p $PASS

echo "******Tagging image*****"
docker tag $IMAGE:$BUILD_TAG rahulpaithane/$IMAGE:$BUILD_TAG

echo "****Pushing Image****"
docker push rahulpaithane/$IMAGE:$BUILD_TAG

#!/bin/bash

echo "*******************************"
echo "********Testing The COde*******"
echo "*******************************"

<<<<<<< HEAD
WORKSPACE="/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-maven-new"

docker run -ti --rm  -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
=======
docker run -ti --rm  -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
>>>>>>> 343f22133c5a62bc35d256e3ec73fed21a14c546

#!/bin/bash

 echo maven-test-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/id_rsa /tmp/.auth rcoder@192.168.43.49:/tmp/.auth

scp -i /opt/id_rsa jenkins/deploy/publish.sh rcoder@192.168.43.49:/tmp/publish

ssh -i  /opt/id_rsa  rcoder@192.168.43.49 "/tmp/publish"

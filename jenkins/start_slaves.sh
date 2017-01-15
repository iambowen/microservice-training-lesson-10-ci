#!/bin/bash

for i in 2
do
  docker run --privileged -d -e JENKINS_MASTER="$JENKINS_MASTER" -e NODE_NAME="docker-slave-0$i" iambowen/jenkins-slave-dind
done


#!/bin/bash

java -jar ./slave.jar -jnlpUrl \
"http://$JENKINS_MASTER/computer/$NODE_NAME/slave-agent.jnlp"

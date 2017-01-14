#!/bin/bash

docker run -e CATTLE_AGENT_IP="172.17.0.20"  -d --privileged \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v ~/rancher-slaves/slave01:/var/lib/rancher rancher/agent:v1.0.2 \
  http://172.17.0.2:8080/v1/scripts/0239659F559DFE625956:1478055600000:JVi6ELrZV7o5vAIQIf8WQ5j35E

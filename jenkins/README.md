### how to run the jenkins slave with docker-in-docker mode
---
This actually using the force of [`tini`](https://github.com/krallin/tini)

```bash
docker run  -e JENKINS_MASTER=10.0.0.18:10086  -e NODE_NAME=docker-slave \
--privileged iambowen/jenkins-slave-dind
```

[jenkins pipeline]https://www.cloudbees.com/blog/top-10-best-practices-jenkins-pipeline-plugin
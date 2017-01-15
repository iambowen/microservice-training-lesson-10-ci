### how to run the jenkins slave with docker-in-docker mode
---
This actually using the force of [`tini`](https://github.com/krallin/tini)

```bash
docker-compose -f jenkins-master-compose.yml up -d 
```

在Jenkins master上面配置允许任何人登陆，jenkins master创建时的密码，可以通过`docker logs JENKINS_MASTER_CONTAINER_ID`获得。


查找本机IP地址 `ifconfig` 如 `192.168.1.247`

```
export JENKINS_MASTER='192.168.1.247:10086'
export NODE_NAME=docker-slave
```
在Jenkins中创建3个节点, 标记为`docker`，分别名为`docker-slave-01`, `docker-slave-02`以及`docker-slave-03`。


```
docker-compose -f jenkins-slave-compose.yml up -d
```


[jenkins pipeline]https://www.cloudbees.com/blog/top-10-best-practices-jenkins-pipeline-plugin
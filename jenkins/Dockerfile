FROM krallin/ubuntu-tini:trusty@sha256:84311cb6b28e823174d3945bfd02b526aba866d8d5c903530f933a7414314330

ARG DOCKER_VERSION="1.12.2"
ARG DOCKER_COMPOSE_VERSION="1.8.1"
ENV JENKINS_MASTER=${JENKINS_MASTER:-localhost}
ENV NODE_NAME=${NODE_NAME:-docker-slave}

# Install other things typically needed
RUN apt-get update && apt-get -y install \
      curl \
      git \
      make \
      openssh-client \
      less \
      groff \
      aufs-tools \
      iptables \
      openjdk-7-jre \
 && rm -rf /var/lib/apt/lists/*

# Install docker
RUN curl -fL "https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz" \
    | tar -zvx --transform='s,docker/,usr/local/bin/,' \
    && chmod +x /usr/local/bin/docker* \
    && curl -fL "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

VOLUME /var/lib/docker
EXPOSE 2375

# install jenkins slave agent
ADD slave.jar /jenkins/
ADD entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ADD jenkins-slave.sh /usr/local/bin/jenkins-slave.sh
RUN chmod +x /usr/local/bin/jenkins-slave.sh

ENTRYPOINT ["tini", "-s", "--", "/usr/local/bin/entrypoint.sh"]

ENV DIND true

CMD ["/usr/local/bin/jenkins-slave.sh"]

FROM jenkins/jenkins:lts

USER root

RUN apt-get update

RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    libseccomp2

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   buster \
   stable"

RUN apt-get update

RUN apt-get install -y docker-ce docker-ce-cli containerd.io

USER jenkins
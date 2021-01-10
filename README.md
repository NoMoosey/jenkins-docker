# Overview

This image is simply [jenkins/jenkins:lts](https://hub.docker.com/r/jenkins/jenkins) with Docker installed on top in order to make it easy to expose the host's Docker socket by mounting `/var/run/docker.sock:/container/path/docker.sock` as a volume.

Now you can command Docker from your pipelines via shell commands!

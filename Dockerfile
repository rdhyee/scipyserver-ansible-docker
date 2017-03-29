FROM jupyter/scipy-notebook

MAINTAINER Raymond Yee  <raymond.yee@gmail.com>

# the following code from https://github.com/ansible/ansible-docker-base/blob/master/stable-ubuntu14.04/Dockerfile

USER root
RUN apt-get update -y
RUN apt-get install --no-install-recommends -y software-properties-common
# sudo apt-add-repository ppa:ansible/ansible && \
RUN apt-get install -y ansible

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts

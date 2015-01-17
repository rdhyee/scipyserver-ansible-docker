FROM ipython/scipyserver

MAINTAINER Raymond Yee  <raymond.yee@gmail.com>

# the following code from https://github.com/ansible/ansible-docker-base/blob/master/stable-ubuntu14.04/Dockerfile

RUN apt-get install --no-install-recommends -y software-properties-common && \
    apt-add-repository ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible

RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
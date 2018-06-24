FROM chaosxu/centos7-cpp
MAINTAINER chaosxu   

USER root
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install -y python36u && \
    yum install -y python36u-pip   && \
    yum install -y python36u-devel   && \
    yum install -y ninja-build && \
    ln -s /usr/bin/python3.6 /usr/bin/python3 && \
    ln -s /usr/bin/pip3.6 /usr/bin/pip3 && \
    pip3 install meson pytest && \
    yum clean all -y
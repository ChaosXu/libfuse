FROM centos:6
MAINTAINER chaosxu  

LABEL name="chaosxu/centos6.5-cpp" \
      version="6.5"

RUN yum update -y\
    yum groupinstall "Development Tools" -y &&\
    yum install -y centos-release-scl-rh && \
    INSTALL_PKGS="devtoolset-7-gcc devtoolset-7-gcc-c++ devtoolset-7-gcc-gfortran devtoolset-7-gdb" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all -y

ENV HOME=/opt/app-root/src \
    PATH=/opt/app-root/src/bin:/opt/app-root/bin:/opt/rh/devtoolset-7/root/usr/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN mkdir -p ${HOME} && \
    groupadd -r default -f -g 1001 && \
    useradd -u 1001 -r -g default -d ${HOME} -s /sbin/nologin \
    -c "Default Application User" default

USER 1001

WORKDIR ${HOME}

# Enable the SCL for all bash scripts.
# ENV BASH_ENV=/opt/app-root/etc/scl_enable \
#     ENV=/opt/app-root/etc/scl_enable \
#     PROMPT_COMMAND=". /opt/app-root/etc/scl_enable"

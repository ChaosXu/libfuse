FROM centos/devtoolset-7-toolchain-centos7　　　　　　　　　　　　　　  
MAINTAINER chaosxu   

USER root
RUN yum update -y\
    && yum groupinstall "Development Tools" -y \
    && yum clean all -y
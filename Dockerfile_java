#######################################################
# Dockerfile to build a PRO Archiver compile container
#######################################################

# Base image - Start with CentOS 
#FROM centos:latest
FROM centos:7
#FROM centos:6
## NOTE - Update GCC linking below!

# Author Matthew Burton
MAINTAINER Matthew Burton <mburton@crawfordtech.com>

##########################
# Install needed software
##########################
# GCC and libs for C/C++ compiling
RUN yum install -y make git
#RUN yum install -y gcc gcc-c++ make git
# get 32 bit libs
# To build checkpassword you will also need the PAM devel (32 and 64)
#RUN yum install -y glibc-devel.i686 glibc-devel libstdc++-devel.i686 pam-devel pam-devel.i686

# set up proper links for the gcc version
# NOTE - update to match CentOS version!
#   Use with CentOS 7
#RUN ln -s /usr/bin/gcc /usr/bin/gcc-4.8
#RUN ln -s /usr/bin/g++ /usr/bin/g++-4.8
#   Use with CentOS 6
#RUN ln -s /usr/bin/gcc /usr/bin/gcc-4.4
#RUN ln -s /usr/bin/g++ /usr/bin/g++-4.4

# Java JDK to compile Java code
# install Apache ant (which includes OpenJDK 7)
RUN yum install -y ant
# install openjdk 8 on CentOS
RUN yum install -y java-1.8.0-openjdk-devel.x86_64

###############################
# Copy in all the needed files
###############################
## missing ant libs needed for jaxb
# COPY ./lib/* /usr/share/ant/lib/
ADD ./lib.tar.gz /usr/share/ant/

##################
# setup build env
##################
ENV DEV_ROOT=/opt/dev/PRO_Archiver
WORKDIR /opt/dev/PRO_Archiver
ENV JAVA_HOME=/usr/lib/jvm/jre/
ENV ANT_HOME=/usr/share/ant/
ENV ANT_CLASSPATH=/usr/share/ant/lib/

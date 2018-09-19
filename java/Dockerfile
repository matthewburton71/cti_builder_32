#######################################################
# Dockerfile to build a PRO Archiver compile container
#######################################################

# Base image - Start with CentOS 
#FROM centos:latest
FROM centos:7

# Author Matthew Burton
MAINTAINER Matthew Burton <mburton@crawfordtech.com>

##########################
# Install needed software
##########################
# GCC and libs for C/C++ compiling
RUN yum install -y make git

# Java JDK to compile Java code
# install Apache ant (which includes OpenJDK 7)
RUN yum install -y ant
# install openjdk 8 on CentOS
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
# install Maven
RUN yum install -y maven

# Clean all cached files from any enabled repository
RUN yum -y clean all

###############################
# Copy in all the needed files
###############################
## missing ant libs needed for jaxb
#COPY ./lib/* /usr/share/ant/lib/
ADD ./lib.tar.gz /usr/share/ant/

##################
# setup build env
##################
ENV DEV_ROOT=/opt/dev/PRO_Archiver
WORKDIR /opt/dev/PRO_Archiver
ENV JAVA_HOME=/usr/lib/jvm/jre/
ENV ANT_HOME=/usr/share/ant/
ENV ANT_CLASSPATH=/usr/share/ant/lib/

###############################
# Copy in all the needed files
###############################
## missing ant libs needed for jaxb
#COPY ./lib/* /usr/share/ant/lib/
ADD ./lib.tar.gz /usr/share/ant/

##################
# setup build env
##################
ENV DEV_ROOT=/opt/dev/PRO_Archiver
WORKDIR /opt/dev/PRO_Archiver
ENV JAVA_HOME=/usr/lib/jvm/jre/
ENV ANT_HOME=/usr/share/ant/
ENV ANT_CLASSPATH=/usr/share/ant/lib/

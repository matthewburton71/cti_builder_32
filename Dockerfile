#######################################################
# Dockerfile to build a PRO Archiver compile container
#######################################################

# Base image - Start with CentOS 
FROM centos

# Author Matthew Burton
MAINTAINER Matthew Burton <mburton@crawfordtech.com>

####################################
# Install needed software
####################################
# Install basic tool package
#RUN yum groupinstall -y 'Development Tools'
# get 32 bit libs
# To build checkpassword you will also need the PAM devel (32 and 64)
RUN yum install -y gcc gcc-c++ make git
RUN yum install -y glibc-devel.i686 glibc-devel libstdc++-devel.i686 pam-devel pam-devel.i686

# install 32 bit Java 8
#RUN wget -q --no-check-certificate --no-cookies --header \
#   "Cookie: oraclelicense=accept-securebackup-cookie" \
#    http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jre-8u112-linux-i586.rpm
#RUN rpm -Uvh jre-8u112-linux-i586.rpm

# set up proper links for the gcc version
RUN ln -s /usr/bin/gcc /usr/bin/gcc-4.8
RUN ln -s /usr/bin/g++ /usr/bin/g++-4.8

###############################
# Copy in all the needed files
###############################

###############################
# setup build env
###############################
ENV DEV_ROOT=/opt/dev/PRO_Archiver
WORKDIR /opt/dev/PRO_Archiver

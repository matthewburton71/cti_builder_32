#######################################################
# Dockerfile to build a PRO Archiver compile container
#######################################################

# Base image - Start with CentOS 
#FROM centos:latest
#FROM centos:7
FROM centos:6
## NOTE - Update GCC linking below!

# Author Matthew Burton
MAINTAINER Matthew Burton <mburton@crawfordtech.com>

##########################
# Install needed software
##########################
# GCC and libs for C/C++ compiling
RUN yum install -y gcc gcc-c++ make git
# get 32 bit libs
# To build checkpassword you will also need the PAM devel (32 and 64)
RUN yum install -y glibc-devel.i686 glibc-devel libstdc++-devel.i686 pam-devel pam-devel.i686

# set up proper links for the gcc version
# NOTE - update to match CentOS version!
#   Use with CentOS 7
#RUN ln -s /usr/bin/gcc /usr/bin/gcc-4.8
#RUN ln -s /usr/bin/g++ /usr/bin/g++-4.8
#   Use with CentOS 6
RUN ln -s /usr/bin/gcc /usr/bin/gcc-4.4
RUN ln -s /usr/bin/g++ /usr/bin/g++-4.4

###############################
# Copy in all the needed files
###############################

###############################
# setup build env
###############################
ENV DEV_ROOT=/opt/dev/PRO_Archiver
WORKDIR /opt/dev/PRO_Archiver

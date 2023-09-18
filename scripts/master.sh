#!/bin/bash
# remove comment if you want to enable debugging
#set -x

sudo swapoff -a

#Dependencies

yum update -y \
    && upgrade -y \
    && install docker \
    && install ansible \
    && install unzip \
    && install python3-pip \
    && install docker-compose \
    && install git \

sudo systemctl enable docker
#!/bin/bash

tee >/etc/yum.repos.d/oneAPI.repo << EOF
[oneAPI]
name=Intel® oneAPI repository
baseurl=http://yum.repos.intel.com/oneapi
enabled=1
gpgcheck=0
repo_gpgcheck=0
sslverify=0
gpgkey=http://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB
EOF

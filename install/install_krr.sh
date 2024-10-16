#!/bin/bash -e

wget https://github.com/robusta-dev/krr/releases/download/v1.9.1-alpha.3/krr-ubuntu-latest-v1.9.1-alpha.3.zip -O /tmp/krr.zip
unzip /tmp/krr.zip -d /opt/kubox/
ln -s /opt/kubox/krr/krr /usr/local/bin/krr
rm -rf /tmp/krr.zip

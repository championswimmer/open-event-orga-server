#!/usr/bin/env bash
# Install essential packages from Apt

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
# Python dev packages
apt-get install -y build-essential python python-dev python-setuptools python-pip \
	libxml2-dev libxslt1-dev nginx uwsgi uwsgi-plugin-python                      \
	postgresql postgresql-contrib libpq-dev

# we want these system-wide
pip install virtualenv virtualenvwrapper

# add a dedicated user instead of root
useradd oe
mkdir /home/oe
chown oe:oe /home/oe

sudo -u oe /vagrant/scripts/user_provision.sh

# /vagrant/scripts/postgres_provision.sh

echo "PWD=$PWD"
echo "Creating DB models"

sudo -u oe /vagrant/scripts/create_models.sh

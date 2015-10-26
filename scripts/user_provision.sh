#!/usr/bin/env bash

export WORKON_HOME=/home/oe/.virtualenvs
echo "WORKON_HOME=$WORKON_HOME"
source /usr/local/bin/virtualenvwrapper.sh

# a dedicated bucket for our deps
mkvirtualenv oe
workon oe

# this is convenient but not always what is wanted
#echo "Freezing reqs"
#pip freeze > requirements.txt
echo "Installing Requirements"
pip install -r /vagrant/requirements.txt

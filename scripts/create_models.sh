#!/usr/bin/env bash

export PYTHONPATH=/vagrant

export WORKON_HOME=/home/oe/.virtualenvs
echo "WORKON_HOME=$WORKON_HOME"
source /usr/local/bin/virtualenvwrapper.sh

workon oe
python /vagrant/scripts/create_models.py


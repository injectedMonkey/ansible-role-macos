#!/usr/bin/env bash

# @todo check status
echo "installing xcode"
xcode-select --install

PATH=$PATH:$HOME/Library/Python/3.7/bin

# @todo check pip instead pip3, and set PATH
PIP="$(which pip3)"

if [ ! ${PIP} ]; then
  echo "installing pip3"
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
  python get-pip.py --user
fi

sudo pip3 install --user ansible

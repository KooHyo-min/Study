#!/usr/bin/env bash

# Initialize
sudo apt -y update
sudo apt -y upgrade

# git
sudo apt install git
git config --global user.name $1
git config --global user.email $2
git config --global color.ui auto
git config --global core.quotepath off
git config --global credential.helper store

# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
# .bashrc 에 하기 내용 추가
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
pyenv update

# virtualenv
PYTHON_VERSION=3.7.0
pyenv install $PYTHON_VERSION
pyenv virtualenv $PYTHON_VERSION study
pyenv local study

# pip
pip install --upgrade pip
pip install --upgrade setuptools

# pip requirements
pip install -r requirements.txt

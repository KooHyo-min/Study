# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
# .bashrc 에 하기 내용 추가
#export PATH="$HOME/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
pyenv update

# virtualenv
pyenv install (version)
pyenv virtualenv (version) (name)
# 프로젝트 폴더로 이동...
pyenv local (name)

# pip 기본 upgrade
pip install --upgrade pip
pip install --upgrade setuptools

# postgresql 설치
sudo apt install postgresql-9.5
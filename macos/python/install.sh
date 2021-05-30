#!/bin/bash
# python https://opensource.com/article/19/5/python-3-default-mac
brew install python
brew install pyenv
pyenv install 3.7.10
pyenv global 3.7.10
pyenv version
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# python virtual environment https://opensource.com/article/19/6/python-virtual-environments-mac
echo -e "\n# python virtual environment https://opensource.com/article/19/6/python-virtual-environments-mac\n" >> ~/.zshrc
echo -e "export LDFLAGS=\"-L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib\"\n" >> ~/.zshrc
echo -e "export CPPFLAGS=\"-I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include\"\n" >> ~/.zshrc

$(pyenv which python3) -m pip install virtualenvwrapper
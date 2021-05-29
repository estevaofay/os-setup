# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Git (via Homebrew)
brew install git

# Install VS Code
brew install --cask visual-studio-code

# Install curl (via Homebrew)
brew install curl

# Install wget
brew install wget

# Install iterm2
brew install --cask iterm2

# Install zsh
brew install zsh

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Update oh my zsh
omz update

# Powerline fonts
git clone https://github.com/powerline/fonts.git ~/.oh-my-zsh/custom/fonts/powerline/fonts
cd ~/.oh-my-zsh/custom/fonts/powerline/fonts
./install.sh

# SDK Man
curl -s "https://get.sdkman.io" | bash

# Powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# yq
brew install yq

# jq
brew install jq

# fzf
brew install fzf
$(brew --prefix)/opt/fzf/install

# kubectl
brew install kubectl 

# kubectl krew
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.tar.gz" &&
  tar zxvf krew.tar.gz &&
  KREW=./krew-"${OS}_${ARCH}" &&
  "$KREW" install krew
)

# kubectl krew plugins
kubectl krew install \
  ctx \
  ns \
  neat

# minikube
brew install minikube

# watch
brew install watch

# python https://opensource.com/article/19/5/python-3-default-mac
brew install python
brew install pyenv
pyenv install 3.7.10
pyenv global 3.7.10
pyenv version

echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc

# python virtual environment https://opensource.com/article/19/6/python-virtual-environments-mac
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/sqlite/include"
$(pyenv which python3) -m pip install virtualenvwrapper

#postman
brew install --cask postman

# apktool
brew install apktool

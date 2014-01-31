# For Ubuntu 13

# Update and cleanup system.
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get autoremove -y

# Essentials
sudo apt-get install -y git
sudo apt-get install -y curl

# Solarized for gnome terminal
cd $HOME
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./solarize
cd ..
rm -rf gnome-terminal-colors-solarized

# Vim 
sudo apt-get install -y vim
sudo apt-get install -y vim-gnome

# My .vimrc 
git clone https://github.com/isuraed/settings.git
cp settings/.vimrc ~/.vimrc
rm -rf settings

# pathogen for Vim and plugins
rm -rf ~/.vim/autoload ~/.vim/bundle
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sensible.git
git clone git://github.com/altercation/vim-colors-solarized.git

# Git setup
git config --global user.name "Isura Edirisinghe"
git config --global user.email isurae@gmail.com
git config --global core.editor vim
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff

# Dev environment
mkdir -p $HOME/Devel

# Python setup
sudo apt-get install -y python-pip
sudo apt-get install -y python-virtualenv
sudo pip install virtualenvwrapper

# Virtualenvwrapper setup
echo "\n" >> $HOME/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> $HOME/.bashrc
echo "export PROJECT_HOME=$HOME/Devel" >> $HOME/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
source $HOME/.bashrc
mkvirtualenv nfldraft
workon nfldraft

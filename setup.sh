# For Ubuntu 12 LTS.

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
git config --global mrege.tool vimdiff


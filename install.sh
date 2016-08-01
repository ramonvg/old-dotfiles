# 1. Add keys
# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add repos
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install programs
apt install gdebi pavucontrol vlc transmission-gtk ruby-ronn xfce4-terminal spotify-client xorg slim -y

# 5. Install atom
wget https://atom.io/download/deb | gdebi

# 6. Install i3 stuff (gaps)

#i3blocks-gaps
git clone git://github.com/vivien/i3blocks
cd i3blocks
make clean debug # or make clean all
make install

# 7. Cleaning stuff
apt purge ruby-ronn


# Config stuff
dotfiles=$HOME/.dotfiles

# symbolic links
ln -s $dotfiles/i3 $HOME/.i3

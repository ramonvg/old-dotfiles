# 1. Add keys
# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add repos
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install programs
apt install gdebi pavucontrol vlc transmission-gtk ruby-ronn xfce4-terminal spotify-client xorg slim zsh lxrandr python3-pip highlight atool -y

# 5. Install atom
wget https://atom.io/download/deb | gdebi

# 6. Install i3 stuff (gaps)

#i3blocks-gaps
git clone git://github.com/vivien/i3blocks
cd i3blocks
make clean debug # or make clean all
make install

# 7. Cleaning stuff
apt purge ruby-ronn xdg-user-dirs
# Config stuff
dotfiles=$HOME/.dotfiles
EDITOR=atom

# Configuring git
git config --global user.name "ramonvg"
git config --global user.email ramonvillalongaa@gmail.com
git config --global core.editor $EDITOR

# OhMyZsh!
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# symbolic links
ln -s $dotfiles/i3 $HOME/.i3
ln -s $dotfiles/config/xfce4 $HOME/.config/xfce4
ln -s $dotfiles/zshrc $HOME/.zshrc
ln -s $dotfiles/config/ranger/rc.conf $HOME/.config/ranger/rc.conf

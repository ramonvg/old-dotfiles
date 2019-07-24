# 7. Cleaning stuff
apt purge ruby-ronn xdg-user-dirs

# Config stuff
dotfiles=$HOME/.dotfiles

# Wide system config
# Adding shutdown permission to users in group sudo

# Configuring git
git config --global user.name "ramonvg"
git config --global user.email ramonvillalongaa@gmail.com

# OhMyZsh!
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# symbolic links
## i3
ln -s $dotfiles/i3 $HOME/.i3

## zsh
ln -s $dotfiles/zshrc $HOME/.zshrc
ln -s $dotfiles/oh-my-zsh/custom/ramonvg.zsh-theme $HOME/.oh-my-zsh/custom/ramonvg.zsh-theme

## config folder
ln -s $dotfiles/config/xfce4 $HOME/.config/xfce4
ln -s $dotfiles/config/xbindkeysrc $HOME/.config/xbindkeysrc
ln -s $dotfiles/config/ranger/rc.conf $HOME/.config/ranger/rc.conf

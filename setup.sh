# /bin/sh

verify () {
    yesexpr="^[yY1+是]|^\s*$"
    while true; do
        read -p "$1" yn
        if [[ "$yn" =~ $yesexpr ]]; then
            return 1
        else
            return 0
        fi
    done
}

time="$(date +%y%m%d_%H%M%S)"
# ---------------- zshrc start ----------------
echo "setting up zsh"
if [ -e ~/.zshrc ]
then
    echo "~/.zshrc exists, backup to ./zshrc_backup-$time"
    mv ~/.zshrc ./zshrc_backup-$time
fi
ln ./zshrc ~/.zshrc

# comment the following line if not running on arch-based linux
verify "Are you running on arch-based linux? (Y/n)"
if [[ $? == 1 ]]
then
    sudo pacman -S zsh-syntax-highlighting
else
    echo -e "\e[1;31mPlease find zsh-syntax-highlighting https://github.com/zsh-users/zsh-syntax-highlighting suitable for your distro\e[0m"
fi
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "finish install plugins"
chsh -s /bin/zsh
echo "set zsh as default shell"
# ---------------- zshrc end ----------------

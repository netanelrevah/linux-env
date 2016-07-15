sudo apt-get update
sudo apt-get install vim
sudo apt-get install tmux
sudo apt-get install git

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bkp;
fi
echo "ln -s $SCRIPT_PATH/.vimrc ~/.vimrc"
ln -s $SCRIPT_PATH/.vimrc ~/.vimrc

sudo update-alternatives --set editor /usr/bin/vim.basic

if [ -e ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.tmux.conf.bkp;
fi
echo "ln -s $SCRIPT_PATH/.tmux.conf ~/.tmux.conf"
ln -s $SCRIPT_PATH/.tmux.conf ~/.tmux.conf

# Configure Git
# Global Username and Email as the install repo
git config --global user.name `git config user.name`
git config --global user.email `git config user.email`

# SVN like Alises
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.last 'log -1 HEAD'
git config --global push.default simple


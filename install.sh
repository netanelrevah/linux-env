sudo apt-get update
sudo apt-get install vim
sudo apt-get install tmux
sudo apt-get install git

mv ~/.vimrc ~/.vimrc.bkp
ln -s .vimrc ~/.vimrc

sudo update-alternatives --set editor /usr/bin/vim.basic

mv ~/.tmux.conf ~/.tmux.conf.bkp
ln -s .tmux.conf ~/.tmux.conf

# Configure Git
# Global Username and Email as the install repo
git config --global user.name `git config user.name`
git config --global user.email `git config user.email`

# SVN like Alises
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.last 'log -1 HEAD'

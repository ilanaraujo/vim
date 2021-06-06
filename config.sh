git clone https://github.com/ilanaraujo/vim
cd vim
mv .vimrc ../
mv .viminfo ../
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c ":PluginInstall"

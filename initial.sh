git submodule add -f https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim

brew install sdcv 
brew install Caskroom/cask/iterm2
brew install bash-completion
pip install powerline-status
cd .. && rm .vim && ln -s python-kdk-vim .vim 
ln -sf python-kdk-vim/python-vimrc .vimrc  
ln -sf python-kdk-vim/bashrc-mac .bashrc 
ln -sf python-kdk-vim/bash_profile.mac .bash_profile
ln -sF python-kdk-vim/stardict .stardict 
cd -

vim -c PluginInstall
cd ./bundle/YouCompleteMe && ./install.py --clang-completer
git add -A
git commit -m 'initial'


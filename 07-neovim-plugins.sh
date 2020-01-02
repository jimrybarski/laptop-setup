# Install vim plugin dependencies
sudo -u jim virtualenv -p python3 $HOME/.local/neovim3
sudo -u jim $HOME/.local/neovim3/bin/pip install pynvim 
# Install Python language server
sudo -u jim pip3 install --user python-language-server

# Install vim-plug
sudo -u jim curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install plugins for neovim
sudo -u jim nvim +silent +'PlugInstall --sync' +qa

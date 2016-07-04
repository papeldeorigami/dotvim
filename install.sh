sudo apt-get install vim-gnome silversearcher-ag exuberant-ctags
ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.vimdebugrc ~/.vimdebugrc

echo "setw -g xterm-keys on" >> ~/.tmux.conf
echo 'set -g default-terminal "screen-256color"' >> ~/.tmux.conf


Introduction
==========================

This repository is an online backup of my own vim settings, which may change as I evolve with the tasks that I use vim for.

Instructions
-------------------------

In order to use this, you may clone the git repository as following:

    mv .vim .vim.old
    mv .vimrc .vimrc.old
    git clone https://github.com/papeldeorigami/dotvim ~/.vim
    ~/.vim/install.sh

Then just open vim and it will download a bunch of modules and settings, including the color scheme.

Settings
-------------------------

You may want to tweak some settings to your preference (files in the .vim folder):
  - .keymaps: keyboard shortcuts
  - .vundle: vim modules. To change/disable modules, remove the folder "bundle" and vim will download everything specified in this file again.
  - .vimrc: the standard vim settings files. Here I define the color scheme to use, for instance.


Cheat codes
-------------------------

- Pretty print JSON file:

    :%!python -m json.tool
            
- Show tabs and new lines

    :set list

Author
-------------------------

Ricardo Andrade <papeldeorigami@googlemail.com>

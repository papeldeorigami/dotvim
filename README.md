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

Installing eslint
-------------------------

Run these commands to install eslint based on airbnb config:

    npm install -g eslintme eslint_d fixmyjs

    (
      export PKG=eslint-config-airbnb;
      npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install -g "$PKG@latest"
    )

    npm install -g install-peerdeps

    install-peerdeps --dev eslint-config-airbnb

Cheat codes
-------------------------

- Pretty print JSON file:

    :%!python -m json.tool
            
- Show tabs and new lines

    :set list

- Convert empty html tags to self-closing (confirm each case individually to not accidentally change something else)

    :%s#></.*># />#gc

Author
-------------------------

Ricardo Andrade <papeldeorigami@googlemail.com>

idz-vim
=============

To use, simply clone this repo to ~/.vim and create a symlink from ~/.vimrc to ~/.vim/vimrc

    $ git clone --recursive git@github.com:yogin/idz-vim.git ~/.vim
    $ ln -s ~/.vim/vimrc ~/.vimrc

You will also need to compile Command-T:

    $ cd ~/.vim/bundle/command-t/ruby/command-t
    $ ruby extconf.rb && make

Easy enough!

Dependencies
------------

 * exuberant ctags - http://ctags.sourceforge.net/
   * Debian/Ubuntu: `sudo apt-get install exuberant-ctags`
   * Mac/Brew: `brew install ctags-exuberant`

Plugins
-------

 * Pathogen - https://github.com/tpope/vim-pathogen
 * Command-T - https://github.com/wincent/Command-T
 * NERDTree - https://github.com/scrooloose/nerdtree
 * NERDTree-Tabs - https://github.com/jistr/vim-nerdtree-tabs
 * Tagbar - http://majutsushi.github.com/tagbar/
 * NERDCommenter - https://github.com/scrooloose/nerdcommenter
 * Ack.vim - https://github.com/mileszs/ack.vim
 * Fugitive - https://github.com/tpope/vim-fugitive
 * Easymotion - https://github.com/Lokaltog/vim-easymotion
 * Syntastic - https://github.com/scrooloose/syntastic
 * Indent-Guides - https://github.com/nathanaelkane/vim-indent-guides
 * Powerline - https://github.com/Lokaltog/vim-powerline
 * Vim-Rails - https://github.com/tpope/vim-rails

Color Schemes
-------------

 * solarized -default- https://github.com/altercation/vim-colors-solarized
 * molokai - https://github.com/tomasr/molokai



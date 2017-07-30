" ---------- Vundle ---------- "

" This file we run all the Vundle Plugins

" Start the Vundle Plugin manager
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'tpope/vim-vinegar' I am not sure that I will be using this.

Plugin 'scrooloose/nerdtree' " Classic style directory structure view/pane on the left, access it using ctrl+t
Plugin 'Xuyuanp/nerdtree-git-plugin' " This adds git status visuals to nerdtree 

Plugin 'ctrlpvim/ctrlp.vim' " Nice fuzzy search plugin, access it using ctrl+p

Plugin 'airblade/vim-gitgutter' " To the left of the numbers in Vim you will now get some gitvisuals on what has changed in the file
Plugin 'tpope/vim-fugitive' " Git wrapper for git commands within Vim

Plugin 'vim-airline/vim-airline' " Status/tab line at the bottom of the screen in vim
"Plugin 'vim-airline/vim-airline-themes' " vim-airline themes
Plugin 'josuegaleas/jay' " Vim Colour scheme and vim-airline theme

Plugin 'scrooloose/syntastic' 		" Syntax checking for vim

" Once all of the Plugins have been added following is required
call vundle#end()            " required
filetype plugin indent on    " required

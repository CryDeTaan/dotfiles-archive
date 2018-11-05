syntax enable

set backspace=indent,eol,start	"Make backspace behave like other editors
set number			"Shows line line numbers in the buffer.
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set cursorline 

set hidden " buffer can be hidden (keeping its changes) without first writing the buffer to a file.


" -----------------Visuals---------------- "
" hi Normal guibg=NONE ctermbg=NONE 
set noshowmode " Let Airline handle the mode visuals 
set laststatus=2 " Needed by Airline to display the Airline information in it.


" ----------------Mappings---------------- "

" Set the <Leader Variable. The default is '\', so if unset <leader> = '\'.
let mapleader = ','

nmap <C-c> :BD<cr> " Delete a file from the buffer via vim-bufkill 

" -----------------Search----------------- "

set hlsearch	"Enable search highlighting.
set incsearch	"Start highlighting first occurrence of match as typing happens

"Remove search highlighting, default is to remain highlighted until new search is performed. 
nmap <Leader><space> :nohlsearch<cr>


" ----------------VIM---------------- "

" Source .vimrc
nmap <Leader>vs :so ~/.dotfiles/rc/vimrc<cr>

" Edit the vimrc file as part of the .dotfiles setup
nmap <Leader>ve :tabedit ~/.dotfiles/dotfiles.d/vimrc.d/<cr>


" ------------------Misc.----------------- "

" Esc in insert mode.
:inoremap jj <Esc>


" ----------------Spelling---------------- "

"set spell spelllang=en_gb " Set spelling

" Enable spell check
nmap <silent> <Leader>sc :set spell spelllang=en_gb <bar> set nocursorline<cr>

" Disable spell check
nmap <silent> <Leader>sco :set nospell <bar> set cursorline<cr>


" ----------------Tabs and buffers---------------- "
" Close the current tab
nmap <Leader>ct :tabc<cr>

" Working with Buffers"
nnoremap <silent> <C-]> :bn<cr>
nnoremap <silent> <C-[> :bp<cr>
nnoremap <silent> <Leader>bc :bc<cr>


" -------------Split Mappings------------- "
set splitbelow
set splitright

" Moving between split windows. 
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



" -------------Copy and Paste from clipboard------------- "

" For MacOS
vnoremap <silent> <C-c> :w !pbcopy<CR><CR> " Copy
noremap <silent> <C-v> :r !pbpaste<CR><CR> " Paste

" For Linux
"
" Apparently there is a different way for linux, lets see.

" --------------Auto Commands------------- "
"cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
command! W :execute ':silent w !sudo tee % > /dev/null' | :q!


" --------------Auto Commands------------- "

"Automatically source the vimrc file on save

"This clears the group otherwise the group will be loaded again in the same group.
augroup autosourcing
autocmd!  
autocmd! BufWritePost ~/.dotfiles/rc/vimrc source %
"autocmd! BufWritePost ~/.dotfiles/dotfiles.d/vimrc.d/*.vim source ~/.dotfiles/rc/vimrc
augroup END

syntax enable

set backspace=indent,eol,start	"Make backspace behave like other editors
set number			"Shows line line numbers in the buffer.
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set spell spelllang=en_gb

" -----------------Visuals---------------- "
hi Normal guibg=NONE ctermbg=NONE 


" -----------------Search----------------- "

set hlsearch	"Enable search highlighting.
set incsearch	"Start highlighting first occurrence of match as typing happens


" ----------------Mappings---------------- "

" Set the <Leader Variable. The default is '\', so if unset <leader> = '\'.
let mapleader = ','

" Edit the vimrc file as part of the .dotfiles setup
nmap <Leader>ev :tabedit ~/.dotfiles/rc/vimrc<cr>

" Close the current tab
nmap <Leader>ct :tabc<cr>

"Remove search highlightling, default is to remain highlighted untill new search is performed. 
nmap <Leader><space> :nohlsearch<cr>

" Source .vimrc
nmap <Leader>sv :so ~/.dotfiles/rc/vimrc<cr>


" -------------Split Mappings------------- "

set splitbelow
set splitright

"nmap <C-
"Something is still missing here. Time will tell ;p





" --------------Auto Commands------------- "

"Automatically source the vimrc file on save

"This clears the group otherwise the group will be loaded again in the same group.
augroup autosourcing
	autocmd!  
	autocmd BufWritePost ~/.dotfiles/rc/vimrc source %
augroup END


" ----- scrooloose/nerdtree -----

" Open/close NERDTree Tabs with \t
" nmap <silent> <leader>t :NERDTreeToggle<CR>
nmap <silent> <C-t> :NERDTreeToggle<CR>

" To have NERDTree always open on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" ----- scrooloose/nerdtree -----

" Open/close NERDTree Tabs with ctl-t
nmap <silent> <C-t> :NERDTreeToggle<CR>

" Move to NerdTree
nmap <silent> <C-f> :NERDTreeFocus<CR>

" To have NERDTree always open on startup

"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

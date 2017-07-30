" ----- ctrlpvim/ctrlp.vim' -----
" Check :help ctrlp-options for other options.
"
" Default mappings
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP' 

" Settings for ctrlp 
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:5,results:10'

" Open CtrlP in find Most-Recently-Used file mode.
nmap <C-e> :CtrlPMRUFiles<cr>

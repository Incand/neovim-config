" No line numbering in terminal and no sign column
autocmd TermOpen * setlocal nonumber norelativenumber scl=no

" Always enter insert mode in terminals
autocmd TermOpen * startinsert
autocmd BufEnter term://* startinsert

" Start terminal with Alt Enter
tnoremap <A-Enter> <C-\><C-N>:bel vs +term<CR>
inoremap <A-Enter> <C-\><C-N>:bot 16sp +term<CR>
nnoremap <A-Enter> :bot 16sp +term<CR>

" Escape for terminal normal mode
tnoremap <C-ü><C-n> <C-\><C-n>

" i3 analogous with Alt key
" Window closing
tnoremap <A-S-q> <C-\><C-N><C-w>q
inoremap <A-S-q> <C-\><C-N><C-w>q
nnoremap <A-S-q> <C-w>q

" Window navigation with Alt
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Window switching with Alt
tnoremap <A-r> <C-\><C-N><C-w>r<C-w>h
tnoremap <A-R> <C-\><C-N><C-w>R<C-w>l
inoremap <A-r> <C-\><C-N><C-w>r<C-w>h
inoremap <A-R> <C-\><C-N><C-w>R<C-w>l
nnoremap <A-r> <C-w>r<C-w>h
nnoremap <A-R> <C-w>R<C-w>l

" Window splitting
tnoremap <A-v><A-ENTER> <C-\><C-N><C-w>v<C-w>l
inoremap <A-v><A-ENTER> <C-\><C-N><C-w>v<C-w>l
nnoremap <A-v><A-ENTER> <C-w>v<C-w>l
tnoremap <A-c><A-ENTER> <C-\><C-N><C-w>s<C-w>j
inoremap <A-c><A-ENTER> <C-\><C-N><C-w>s<C-w>j
nnoremap <A-c><A-ENTER> <C-w>s<C-w>j


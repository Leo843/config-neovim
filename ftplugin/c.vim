" Use F2 to save and format
nnoremap <buffer> <F2> :wa <bar> !make format<CR>
" Use F3 to switch between header and source file
nnoremap <buffer> <F3> :ClangdSwitchSourceHeader<CR>

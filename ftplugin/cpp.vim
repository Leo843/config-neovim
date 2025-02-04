" Use F3 to switch between header and source file
nnoremap <buffer> <F3> :ClangdSwitchSourceHeader<CR>
" prepend 'm_' to word under cursor
nnoremap <buffer> <leader>m wbim_<Esc>
" insert semi-colon at the end of the line
nnoremap <leader>; A;<Esc>
" Use F2 to save and format
nnoremap <buffer> <F2> :wa <bar> !make format<CR>

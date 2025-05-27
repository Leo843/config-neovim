" Use F3 to switch between header and source file
nnoremap <buffer> <F3> :LspClangdSwitchSourceHeader<CR>
" prepend 'm_' to word under cursor
nnoremap <buffer> <leader>m wbim_<Esc>
" insert semi-colon at the end of the line
nnoremap <leader>; A;<Esc>
" Use F2 to save and format
nnoremap <buffer> <silent> <F2> :w <bar> silent !clang-format -i %<CR>

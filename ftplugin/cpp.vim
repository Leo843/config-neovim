" Use F3 to switch between header and source file
nnoremap <buffer> <F3> :call ClangdSwitchSourceHeader()<CR>
" prepend 'm_' to word under cursor
nnoremap <buffer> <leader>m wbim_<Esc>
" insert semi-colon at the end of the line
nnoremap <leader>; A;<Esc>

" Use F2 to save and format
nnoremap <buffer> <silent> <F2> :w <bar> silent !clang-format -i %<CR>
" Use F3 to switch between header and source file
nnoremap <buffer> <F3> :LspClangdSwitchSourceHeader<CR>

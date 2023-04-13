" highlight trailing white spaces
"
" define the ExtraWhitespace match group.
highlight ExtraWhitespace ctermbg=red guibg=red
" match all trailing white spaces when a buffer is entered.
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" match all trailing white spaces except while inserting at the end of a line
" (See '\%#' and '\@<!' patterns for more details).
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" match all trailing white spaces after leaving insert mode.
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" clear all match highlights when leaving a buffer.
autocmd BufWinLeave * call clearmatches()

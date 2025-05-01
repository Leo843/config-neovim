" change viminfo file location
let s:VimInfoFilePath = stdpath('config') . "/viminfo"
if len(&viminfo) > 0
  let &viminfo .= ","
  let &viminfo .= "n" . s:VimInfoFilePath
else
  let &viminfo .= "n" . s:VimInfoFilePath
endif

" swap files location
let s:VimSwapDir = stdpath('config') . "/swap"
if len(&directory) > 0
  let &directory = s:VimSwapDir . "," . &directory
else
  let &directory = s:VimSwapDir
endif
" The option is ignored if the directory does not exist.
call mkdir(s:VimSwapDir, "p", 0700)

" autocompletion setup
set completeopt=menuone,noselect

" disable comment automatic insertion on new lines
set formatoptions-=ro

" always show the sign column
set signcolumn=yes

" idle time after which the swap file is updated
" GitGutter uses this idle timer to refresh the sign column
set updatetime=500

" use {{{ and }}} to define fold regions.
set foldmethod=marker

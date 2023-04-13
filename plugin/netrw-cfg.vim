" netrw configuration
let g:netrw_altfile = 1
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
let g:netrw_fastbrowse = 0

" custom delete routine
function! DeleteFiles(flist)
  call system('trash ' . join(a:flist))
endfunction

" setup netrw mappings (:h g:Netrw_UserMaps)
let g:Netrw_UserMaps = [
  \ ['D', 'g:NetrwHandler_D'],
  \ ["\<Del>", 'g:NetrwHandler_D']
  \ ]

" implement normal mode deletion
function! g:NetrwHandler_D(islocal)
  if a:islocal
    " get selected file list (:h netrw-mf)
    let l:flist = netrw#Expose('netrwmarkfilelist')
    if l:flist is# 'n/a'
      " no selection -- get name under cursor
      let l:flist = [b:netrw_curdir . '/' . netrw#GX()]
    else
      " remove selection as files will be deleted soon
      call netrw#Call('NetrwUnmarkAll')
    endif
    " do delete and refresh view
    call g:DeleteFiles(l:flist)
    return 'refresh'
  endif
endfunction

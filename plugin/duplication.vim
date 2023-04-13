" Duplicate the file from the current buffer in the same folder with the given
" name.
command! -nargs=1 Duplicate saveas %:p:h/<args>

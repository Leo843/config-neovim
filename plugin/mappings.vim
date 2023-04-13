" Y yanks from the cursor to the end of the line
nnoremap Y y$

" J concatenates lines without changing the cursor position
nnoremap J mzJ`z

" move lines around
nnoremap <leader>j :m .+1<CR>
nnoremap <leader>k :m .-2<CR>
vnoremap J :m '>+1<CR>gv
vnoremap K :m '<-2<CR>gv


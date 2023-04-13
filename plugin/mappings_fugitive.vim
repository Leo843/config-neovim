" git hunk preview
nmap <leader>ghp <Plug>(GitGutterPreviewHunk)
" git hunk stage
nmap <leader>ghs <Plug>(GitGutterStageHunk)
xmap <leader>ghs <Plug>(GitGutterStageHunk)
" git hunk undo
nmap <leader>ghu <Plug>(GitGutterUndoHunk)
" go to next hunk
nmap ]h <Plug>(GitGutterNextHunk)
" go to previous hunk
nmap [h <Plug>(GitGutterPrevHunk)
" git status
nmap <leader>gs :Git<CR>
" git commit
nmap <leader>gcc :Git commit<CR>
" git commit amend
nmap <leader>gca :Git commit --amend<CR>

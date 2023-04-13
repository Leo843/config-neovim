" Required:
" - width [float range [0 ~ 1]] or [integer range [8 ~ ]]
" - height [float range [0 ~ 1]] or [integer range [4 ~ ]]
"
" Optional:
" - xoffset [float default 0.5 range [0 ~ 1]]
" - yoffset [float default 0.5 range [0 ~ 1]]
" - highlight [string default 'Comment']: Highlight group for border
" - border [string default 'rounded']: Border style
"   - 'rounded' / 'sharp' / 'horizontal' / 'vertical' / 'top' / 'bottom' / 'left' / 'right'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

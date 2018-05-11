" Show the highlight groups under the cursor
" Maintainer:       David Ben Knoble <ben.knoble@gmail.com>
" Last Change:      2018 May 11

if exists('g:loaded_synstax')
  finish
endif

if !has("syntax") || &compatible
  echohl ErrorMsg
  echomsg "vim-synstax requires the +syntax features"
  echohl None
  finish
endif

let g:loaded_synstax = 1

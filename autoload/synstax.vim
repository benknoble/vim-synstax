" Show the highlight groups under the cursor
" Maintainer:       David Ben Knoble <ben.knoble@gmail.com>
" Last Change:      2018 May 11

if !has("syntax") || &compatible
  echohl ErrorMsg
  echomsg "vim-synstax requires the +syntax features"
  echohl None
  finish
endif

function! synstax#UnderCursor() abort
  let l:stack = synstax#Stack(line('.'), col('.'))
  if empty(l:stack)
    return "No syntax highlight groups under cursor"
  endif
  let l:names = synstax#Attributes(l:stack, 'name')
  return l:names
endfunction

function! synstax#Stack(line, col) abort
  return synstack(a:line, a:col)
endfunction

function! synstax#Attributes(stack, attr) abort
  let l:attr_func = printf('synIDattr(v:val, "%s")', a:attr)
  return map(a:stack, l:attr_func)
endfunction

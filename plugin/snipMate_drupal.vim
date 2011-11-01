" config which can be overridden (shared lines)
if !exists('g:snipMate')
  let g:snipMate = {}
endif
let s:snipMate = g:snipMate

let s:snipMate['scope_aliases'] = get(s:snipMate,'scope_aliases',{'php' :'drupal,php' })

if has("autocmd")
  " Drupal php files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
  augroup END
endif
" vim:noet:sw=4:ts=4:ft=vim

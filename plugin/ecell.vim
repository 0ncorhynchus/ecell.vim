if exists("g:loaded_ecell")
  finish
endif
let g:loaded_const = 1

let s:save_cpo = &cpo
set cpo&vim

set list
set listchars=tab:>-,trail:~

augroup UndesirableSpaceHighlights
  autocmd!
  autocmd VimEnter,WinEnter * match WhitespaceEOL /\s\+$/
  autocmd VimEnter,WinEnter * match WhitespaceBraces /[\[(]\s\+[^[:blank:]]\|[^[:blank:]]\s\+[\])]/
  autocmd VimEnter,WinEnter * call matchadd("JISX0208Space", "　")
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo

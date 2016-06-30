let s:enabled = 0

function! ecell#ToggleMode ()
  if s:enabled
    autocmd! UndesirableSpaceHighlights
    let s:enabled = 0
  else
    augroup UndesirableSpaceHighlights
      autocmd!
      autocmd VimEnter,WinEnter * match WhitespaceEOL /\s\+$/
      autocmd VimEnter,WinEnter * match WhitespaceBraces /[\[(]\s\+[^[:blank:]]\|[^[:blank:]]\s\+[\])]/
      autocmd VimEnter,WinEnter * call matchadd("JISX0208Space", "　")
    augroup END
    let s:enabled = 1
  endif
endfun

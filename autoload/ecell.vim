let s:enabled = 0

function! ecell#ToggleMode ()
  if s:enabled
    echo "clear"
    highlight clear WhitespaceEOL
    highlight clear WhitespaceBraces
    highlight clear SpecialKey
    highlight clear JISX0208Space
    let s:enabled = 0
  else
    echo "highlight"
    highlight WhitespaceEOL ctermbg=red guibg=red
    highlight WhitespaceBraces ctermbg=red guibg=red
    highlight SpecialKey ctermbg=red guibg=red
    highlight JISX0208Space term=underline ctermbg=red guibg=red
    let s:enabled = 1
  endif
endfun

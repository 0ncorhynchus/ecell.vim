if exists("g:loaded_ecell")
  finish
endif
let g:loaded_const = 1

let s:save_cpo = &cpo
set cpo&vim

set list
set listchars=tab:>-,trail:~

highlight WhitespaceEOL ctermbg=red guibg=red
highlight WhitespaceBraces ctermbg=red guibg=red
highlight SpecialKey ctermbg=red guibg=red
highlight JISX0208Space term=underline ctermbg=red guibg=red

let &cpo = s:save_cpo
unlet s:save_cpo

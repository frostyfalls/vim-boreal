" Name: boreal
" Author: frosty <f@rvl.onl>
" Maintainer: frosty <f@rvl.onl>
" Website: https://github.com/frostyfalls/vim-boreal
" License: GPL-3.0

set background=dark
hi clear
if exists('g:syntax_on')
  syntax reset
endif
let g:colors_name = 'boreal'

" TODO(frosty): Cover the full 4-bit ANSI color palette
let s:aurora = '#deef70'
let s:blizzard = '#e4e4e4'
let s:twilight = '#666450'
let s:dusk = '#1e1e1c'
let s:eggnog = '#bfbca4'
let s:fireplace = '#ed9863'
let s:petrichor = '#7ab7dd'
let s:sunkiss = '#e0cd7f'
let s:maroon = '#47312e'
let s:crimson = '#c99088'

fun! s:Hi(group, fg, bg, ...)
  let gui = a:0 >= 1 ? a:1 : 'none'
  let guisp = a:0 >= 2 ? a:2 : 'none'
  exe 'hi ' . a:group ' guifg=' . a:fg . ' guibg=' . a:bg . ' gui=' . gui
        \ . ' guisp=' . guisp
endfun

call s:Hi('Normal', 'none', 'none')
hi! link NormalFloat Normal
call s:Hi('MatchParen', s:fireplace, s:dusk)
call s:Hi('Search', s:dusk, s:petrichor)
call s:Hi('CurSearch', s:dusk, s:sunkiss)
call s:Hi('Todo', s:sunkiss, 'none')

call s:Hi('DiagnosticInfo', s:eggnog, 'none')
call s:Hi('DiagnosticError', s:crimson, 'none')
call s:Hi('DiagnosticWarn', s:sunkiss, 'none')
call s:Hi('DiagnosticHint', s:petrichor, 'none')

call s:Hi('Error', 'none', s:maroon)

call s:Hi('NonText', s:twilight, 'none')
hi! link LineNr NonText
hi! link Comment NonText
hi! link EndOfBuffer NonText

call s:Hi('String', s:aurora, 'none')

call s:Hi('Constant', s:blizzard, 'none')
hi! link CursorLineNr Constant
hi! link Identifier Constant
hi! link Statement Constant
hi! link Type Constant
hi! link Function Constant
hi! link Scope Constant
hi! link WinSeparator Constant

call s:Hi('Special', s:eggnog, 'none')
hi! link Character Special
hi! link Boolean Special
hi! link Number Special
hi! link Float Special
hi! link Structure Special
hi! link StorageClass Special
hi! link PreProc Special
hi! link Macro PreProc
hi! link ModeMsg Special
hi! link Title Special
hi! link Directory Special

call s:Hi('Visual', s:dusk, s:eggnog)

call s:Hi('StatusLine', 'none', s:dusk)
call s:Hi('StatusLineNC', s:eggnog, 'none')

call s:Hi('SpellBad', s:crimson, 'none', 'underline', s:crimson)

hi! link @markup.link Constant
hi! link @markup.link.label Special
hi! link @markup.link.markdown_inline Constant

" vim: ts=2 sw=2 et

" Name:    boreal
" Author:  frosty <f@rvl.onl>
" Website: https://github.com/frostyfalls/vim-boreal
" License: GPL-3.0

set background=dark
hi clear
if exists('g:syntax_on')
  syntax reset
endif
let g:colors_name = 'boreal'

let s:dusk      = '#1e1e1c'
let s:twilight  = '#727160'
let s:eggnog    = '#bfbca4'
let s:blizzard  = '#e0e2d0'
let s:maroon    = '#302422'
let s:crimson   = '#c99088'
let s:fireplace = '#ed9863'
let s:moonglow  = '#3a3a27'
let s:sunkiss   = '#e0cd7f'
let s:aurora    = '#deef70'
let s:moss      = '#33352e'
let s:petrichor = '#7ab7dd'
let s:lavender  = '#7560af'

fun! s:Hi(group, fg, bg, ...)
  let gui = a:0 >= 1 ? a:1 : 'none'
  let guisp = a:0 >= 2 ? a:2 : 'none'
  exe 'hi ' . a:group ' guifg=' . a:fg . ' guibg=' . a:bg . ' gui=' . gui
        \ . ' guisp=' . guisp
endfun

fun! s:Link(from, to)
  exe 'hi clear ' . a:from
  exe 'hi link ' . a:from . ' ' . a:to
endfun

call s:Hi('Character', s:eggnog, 'none')
call s:Hi('Comment', s:twilight, 'none')
call s:Hi('Constant', s:eggnog, 'none')
call s:Hi('CurSearch', s:dusk, s:sunkiss)
call s:Hi('Cursor', s:dusk, s:eggnog)
call s:Hi('CursorLineNr', s:blizzard, 'none')
call s:Hi('DiagnosticError', s:crimson, 'none')
call s:Hi('DiagnosticHint', s:eggnog, 'none')
call s:Hi('DiagnosticInfo', s:petrichor, 'none')
call s:Hi('DiagnosticWarn', s:sunkiss, 'none')
call s:Hi('Directory', s:petrichor, 'none')
call s:Hi('Error', s:blizzard, s:maroon)
call s:Hi('Function', s:blizzard, 'none')
call s:Hi('Identifier', s:blizzard, 'none')
call s:Hi('IncSearch', s:dusk, s:sunkiss)
call s:Hi('Keyword', s:blizzard, 'none')
call s:Hi('LineNr', s:twilight, 'none')
call s:Hi('MatchParen', s:fireplace, s:dusk)
call s:Hi('NonText', s:twilight, 'none')
call s:Hi('Normal', s:blizzard, s:dusk)
call s:Hi('NormalFloat', s:blizzard, s:dusk)
call s:Hi('Number', s:eggnog, 'none')
call s:Hi('Operator', s:blizzard, 'none')
call s:Hi('PreProc', s:eggnog, 'none')
call s:Hi('Search', s:blizzard, s:moonglow)
call s:Hi('Special', s:eggnog, 'none')
call s:Hi('SpellBad', 'none', 'none', 'underline', s:crimson)
call s:Hi('SpellCap', 'none', 'none', 'underline', s:sunkiss)
call s:Hi('SpellRare', 'none', 'none', 'underline', s:petrichor)
call s:Hi('Statement', s:blizzard, 'none')
call s:Hi('StatusLine', s:blizzard, s:moss)
call s:Hi('StatusLineNC', s:eggnog, 'none')
call s:Hi('StorageClass', s:eggnog, 'none')
call s:Hi('String', s:aurora, 'none')
call s:Hi('Title', s:eggnog, 'none')
call s:Hi('Todo', s:sunkiss, 'none')
call s:Hi('Type', s:blizzard, 'none')
call s:Hi('Whitespace', s:twilight, 'none')
call s:Hi('WinSeparator', s:blizzard, 'none')
call s:Hi('@markup.link', s:blizzard, 'none')
call s:Hi('@markup.link.label', s:eggnog, 'none')
call s:Hi('@variable', s:blizzard, 'none')
call s:Link('Visual', 'Cursor')

call s:Link('cssClassName', 'Keyword')
call s:Link('cssIdentifier', 'Keyword')
call s:Link('cssImportant', 'Keyword')
call s:Link('cssTagName', 'Keyword')

call s:Hi('htmlTag', s:eggnog, 'none')
call s:Link('htmlTagName', 'htmlTag')

call s:Hi('@constructor.lua', s:blizzard, 'none')
call s:Hi('@function.builtin.lua', s:blizzard, 'none')
call s:Hi('@module.builtin.lua', s:blizzard, 'none')

call s:Hi('makeTarget', s:eggnog, 'none')
call s:Hi('makeCommands', s:blizzard, 'none')

call s:Link('vimCommentTitle', 'PreProc')

" vim: ts=2 sw=2 et

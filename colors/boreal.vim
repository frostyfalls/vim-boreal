" Name: boreal
" Author: frosty <f@rvl.onl>
" Maintainer: frosty <f@rvl.onl>
" Website: https://github.com/frostyfalls/vim-boreal
" License: GPL-3.0

set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'frosty'

function! s:Hi(group, fg, bg)
  execute 'highlight ' . a:group ' guifg=' . a:fg . ' guibg=' . a:bg . ' gui=none'
endfunction

function! s:Link(from, to)
  execute 'highlight ' a:from . ' none'
  execute 'highlight link ' . a:from . ' ' . a:to
endfunction

let s:aurora = '#deef70'
let s:blizzard = '#e4e4e4'
let s:twilight = '#666450'
let s:dusk = '#1e1e1c'
let s:eggnog = '#bfbca4'
let s:fireplace = '#f28948'
let s:petrichor = '#48b1f2'
let s:sunkiss = '#f2de48'
let s:crimson = '#47312e'

call s:Hi('Normal', 'none', 'none')
call s:Hi('MatchParen', s:fireplace, s:dusk)
call s:Hi('Search', s:dusk, s:petrichor)
call s:Hi('CurSearch', s:dusk, s:sunkiss)

call s:Hi('Error', 'none', s:crimson)

call s:Hi('NonText', s:twilight, 'none')
call s:Link('LineNr', 'NonText')
call s:Link('Comment', 'NonText')
call s:Link('EndOfBuffer', 'NonText')

call s:Hi('String', s:aurora, 'none')

call s:Hi('Constant', s:blizzard, 'none')
call s:Link('CursorLineNr', 'Constant')
call s:Link('Identifier', 'Constant')
call s:Link('Statement', 'Constant')
call s:Link('Type', 'Constant')
call s:Link('Function', 'Constant')
call s:Link('Scope', 'Constant')
call s:Link('WinSeparator', 'Constant')

call s:Hi('Special', s:eggnog, 'none')
call s:Link('Character', 'Special')
call s:Link('Boolean', 'Special')
call s:Link('Number', 'Special')
call s:Link('Float', 'Special')
call s:Link('Structure', 'Special')
call s:Link('StorageClass', 'Special')
call s:Link('PreProc', 'Special')
call s:Link('Macro', 'PreProc')
call s:Link('ModeMsg', 'Special')
call s:Link('Title', 'Special')
call s:Link('Directory', 'Special')

call s:Hi('Visual', s:dusk, s:eggnog)

call s:Hi('StatusLine', 'none', s:dusk)
call s:Hi('StatusLineNC', s:eggnog, 'none')

" vim: ts=2 sw=2 et

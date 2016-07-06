" My Mac OS X gVim settings
" Sakari Lehtonen <sakari@dicole.fi>

set ch=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text
set lines=48
set columns=140
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
let c_comment_strings=1
syntax on
set hlsearch
set gfn=Inconsolata\ for\ Powerline:h16
set go-=T
"colorscheme solarized
colorscheme madeofcode

if exists('&macatsui')
	set nomacatsui
endif

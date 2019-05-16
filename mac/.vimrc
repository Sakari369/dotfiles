" My .vimrc setup for Mac Os X
" Sakari Lehtonen <sakari@dicole.fi>

set shell=/bin/bash
set nocompatible 

set incsearch
"set showcmd		" display incomplete commands
set encoding=utf-8
set modelines=0
set ttyfast
set showmatch		" show matching brackets
set autoindent
set backup 
set ruler
set lazyredraw
set hlsearch
set smartcase
set vb t_vb=
set bs=2
set noexpandtab
set tabstop=8 shiftwidth=8
set history=1024
set laststatus=2

" Resize splits when the window is resized
au VimResized * :wincmd =

" Disable hlsearch from \q
nmap <leader>q :nohlsearch<CR>

" Go to last buffer
nmap <C-e> :e#<CR>

" Don't use Ex mode, use Q for formatting
map Q gq

set pastetoggle=<leader>p

" Set custom mapleader
let mapleader = ","
nnoremap <leader>k :FSHere<CR>

" Show available options when using command tab completion
set wildmenu

" Map j/k to always move one row up and down
nmap j gj
nmap k gk

" Map <leader>s to show whitespace
"set lcs=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Make
nmap <leader>m :make<CR>:cw<CR>

" Shorten prompts
set shortmess=atsI

" Appreviations
function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction
function! MakeSpacelessBufferIabbrev(from, to)
    execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction

call pathogen#infect()

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
	set background=dark
	syntax on
	set hlsearch
endif

" Autocommands
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
filetype plugin indent on

autocmd BufEnter *.m set filetype=objc
autocmd BufEnter *.pjs,*.pde set filetype=java
autocmd BufEnter *.coffee set filetype=coffee
autocmd BufEnter *.hbs,*.handlebars set filetype=html

" C/C++
autocmd FileType c,cpp call FT_c()
" Objective-C
autocmd FileType objc call FT_objc()
" XHTML, HTML, CSS & PHP
autocmd FileType xhtml,html,css,php call FT_html()
" JS
autocmd FileType javascript call FT_js()
" Java
autocmd FileType java call FT_java()
" CoffeeScript
autocmd FileType coffee call FT_coffee()

augroup ft_fish
    au!
    au BufNewFile,BufRead *.fish setlocal filetype=fish
augroup END

function! FT_c()
	setlocal formatoptions=roqltc
	setlocal cindent 
	setlocal cino=:0=sw+sw(sw 
	setlocal comments=sr:/*,mb:*,el:*/,://
	map! #3 /*
	map! #4 */
endfunction

function! FT_java()
	setlocal formatoptions=roqltc
	setlocal cindent 
	setlocal cino=:0=sw+sw(sw 
	setlocal comments=sr:/*,mb:*,el:*/,://
	map! #3 /*
	map! #4 */
endfunction

function! FT_coffee()
	setlocal expandtab
	setlocal tabstop=2 shiftwidth=2
endfunction

" Functions for different general filetypes
function! FT_objc()
	call FT_c()
	setlocal makeprg=xcodebuild\ -activetarget\ -activebuildstyle
endfunction

function! FT_html()
	setlocal tabstop=2 shiftwidth=2
endfunction

function! FT_js()
	setlocal tabstop=8 shiftwidth=8
	setlocal makeprg=jslint\ %
	setlocal errorformat=%-P%f,
				\%-G/*jslint\ %.%#*/,
				\%*[\ ]%n\ %l\\,%c:\ %m,
				\%-G\ \ \ \ %.%#,
				\%-GNo\ errors\ found.,
				\%-Q

	call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')
endfunction

" For Mac Os X .plist editing
augroup plist
	" Delete existing commands (avoid problems if this file is sourced twice)
	autocmd!

	" Set binary mode (needs to be set _before_ reading binary files to avoid
	" breaking lines etc; since setting this for normal plist files doesn't
	" hurt and it's not yet known whether or not the file to be read is stored
	" in binary format, set the option in any case to be sure).
	" Do it before editing a file in a new buffer and before reading a file
	" into in an existing buffer (using ':read foo.plist').
	autocmd BufReadPre,FileReadPre *.plist set binary

	" Define a little function to convert binary files if necessary...
	fun MyBinaryPlistReadPost()
		" Check if the first line just read in indicates a binary plist
		if getline("'[") =~ "^bplist"
			" Filter lines read into buffer (convert to XML with plutil)
			'[,']!plutil -convert xml1 /dev/stdin -o /dev/stdout
			" Many people seem to want to save files originally stored
			" in binary format as such after editing, so memorize format.
			let b:saveAsBinaryPlist = 1
		endif
		" Yeah, plain text (finally or all the way through, either way...)!
		set nobinary
		" Trigger file type detection to get syntax coloring etc. according
		" to file contents (alternative: 'setfiletype xml' to force xml).
		filetype detect
	endfun
	" ... and call it just after editing a file in a new buffer...
	autocmd BufReadPost *.plist call MyBinaryPlistReadPost()
	" ... or when reading a file into an existing buffer (in that case, don't
	" save as binary later on).
	autocmd FileReadPost *.plist call MyBinaryPlistReadPost() | let b:saveAsBinaryPlist = 0

	" Define and use functions for conversion back to binary format
	fun MyBinaryPlistWritePre()
		if exists("b:saveAsBinaryPlist") && b:saveAsBinaryPlist
			" Must set binary mode before conversion (for EOL settings)
			set binary
			" Convert buffer lines to be written to binary
			silent '[,']!plutil -convert binary1 /dev/stdin -o /dev/stdout
			" If there was a problem, e.g. when the file contains syntax
			" errors, undo the conversion and go back to nobinary so the
			" file will be saved in text format.
			if v:shell_error | undo | set nobinary | endif
		endif
	endfun
	autocmd BufWritePre,FileWritePre *.plist call MyBinaryPlistWritePre()
	fun MyBinaryPlistWritePost()
		" If file was to be written in binary format and there was no error
		" doing the conversion, ...
		if exists("b:saveAsBinaryPlist") && b:saveAsBinaryPlist && !v:shell_error
			" ... undo the conversion and go back to nobinary so the
			" lines are shown as text again in vim.
			undo
			set nobinary
		endif
	endfun
	autocmd BufWritePost,FileWritePost *.plist call MyBinaryPlistWritePost()
augroup END

" Function keys
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

noremap <F1> :nohl<cr>
noremap  § :NERDTreeToggle<cr>
noremap  ` :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

" 2html settings
let g:html_use_encoding = "utf8"
let g:html_indent_tags = ['p', 'li']

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/global_ycm_extra.conf'
let g:ycm_confirm_extra_conf = '0'

" Ignores
set wildignore+=*.o,*~
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dojo)|(\.(swp|png|jpg|git|pyc|o|so))$'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" Startify
let g:startify_custom_header = []

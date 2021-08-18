" My .vimrc setup for macOS.
" Sakari Lehtonen <sakari@psitriangle.net>

set shell=/bin/bash
set nocompatible 

set incsearch
"set showcmd		" display incomplete commands
set encoding=utf-8
set modelines=0
set ttyfast
set showmatch		" show matching brackets
set autoindent
set nobackup
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

" Disable auto indentation settings for polygot vim-sleuth.
let g:polyglot_disabled = ['autoindent']
let g:polyglot_disabled = ['sensible']

" Plugins here
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'dyng/ctrlsf.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'preservim/tagbar'
"Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tikhomirov/vim-glsl'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-dispatch'
"Plug 'ludovicchabant/vim-gutentags'
call plug#end()

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

" Function keys
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

noremap <F1> :nohl<cr>
noremap  § :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>
noremap <F8> :TagbarToggle<CR>

" Ignores
set wildignore+=*.o,*~
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dojo)|(\.(swp|png|jpg|git|pyc|o|so))$'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'

" Startify
let g:startify_custom_header = []

" Tagbar
let g:tagbar_ctags_bin = 'uctags'
" Focus the panel when opening it
let g:tagbar_autofocus = 1
" Highlight the active tag
let g:tagbar_autoshowtag = 1
" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'

" ctrlsf
" Use the ack tool as the backend
let g:ctrlsf_backend = 'ack'
" Auto close the results panel when opening a file
let g:ctrlsf_auto_close = { "normal":0, "compact":0 }
" Immediately switch focus to the search window
let g:ctrlsf_auto_focus = { "at":"start" }
" Don't open the preview window automatically
let g:ctrlsf_auto_preview = 0
" Use the smart case sensitivity search scheme
let g:ctrlsf_case_sensitive = 'smart'
" Normal mode, not compact mode
let g:ctrlsf_default_view = 'normal'
" Use absoulte search by default
let g:ctrlsf_regex_pattern = 0
" Position of the search window
let g:ctrlsf_position = 'right'
" Width or height of search window
let g:ctrlsf_winsize = '46'
" Search from the current working directory
let g:ctrlsf_default_root = 'cwd'

" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt 
" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath
" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec
" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>o :CtrlSFOpen<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" FSwitch
au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,c'
nnoremap <C-Z> :FSRight<CR>

" Open vim-dispatch window and scroll to bottom
nnoremap    <C-m>m    :Copen<CR> <bar> G
" Build debug and release targets
nnoremap    <C-m>bd   :Dispatch! make -C build/Debug<CR>
nnoremap    <C-m>br   :Dispatch! make -C build/Release<CR>

" Map <F7> to the Release executable with passed filename
function SetBinaryRelease(filename)
    let bpath = getcwd() . "/bin/" . a:filename 
    execute "nnoremap <F7> :Dispatch "
                \ bpath 
                \ . "<CR> <bar> :Copen<CR>"
    echo "<F7> will run: " . bpath
endfunction

let g:gutentags_ctags_executable = 'uctags'


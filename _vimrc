set nocompatible
colo darkblue
syntax on
set autoindent
set smartindent
set expandtab
set number
set wrap
set scrolloff=10
set hlsearch
set showmatch
set incsearch
set smartcase
filetype plugin indent on
set ignorecase

"set foldmethod=marker
"set foldmarker={{{,}}}
set shiftround

set wildmenu
set wildmode=full
"set undofile

set linebreak
set ruler

set cursorline

set nrformats-=octal
set backspace=indent,eol,start

set tabstop=4
set shiftwidth=4
set softtabstop=4


cnoreabbrev W w
cnoreabbrev Q q

cnoreabbrev so source %

cnoreabbrev clone !git clone https://github.com/boyanhristov96/
cnoreabbrev compile !g++ *.h *.cpp -g -o o --std=c++11
cnoreabbrev run !./o
cnoreabbrev myvim $MYVIMRC
cnoreabbrev memleak !valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose ./o

"autocmd BufRead,BufWritePre *.* normal gg=G``

augroup lisp
    autocmd!
    autocmd Filetype lisp cnoreabbrev lisp !clisp %
    autocmd Filetype lisp cnoreabbrev lsip !clisp %
    autocmd Filetype lisp cnoreabbrev lspi !clisp %

    autocmd Filetype lisp set lisp
augroup END

augroup js
	autocmd!
	autocmd Filetype html nnoremap <buffer> <leader>c I<!--<esc>A--><esc>
augroup END

augroup cpp
	autocmd!
	autocmd Filetype cpp nnoremap <buffer> <leader>c I//<esc>
    autocmd Filetype cpp nnoremap <buffer> <leader>u ^df/
augroup END

augroup html
	autocmd!
	autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END

augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup arrowkeys
	noremap <left> <nop>
	noremap <right> <nop>
	noremap <up> <nop>
	noremap <down> <nop>
	inoremap <left> <nop>
	inoremap <right> <nop>
	inoremap <up> <nop>
	inoremap <down> <nop>
	vnoremap <left> <nop>
	vnoremap <right> <nop>
	vnoremap <up> <nop>
	vnoremap <down> <nop>
	nnoremap <left> <nop>
	nnoremap <right> <nop>
	nnoremap <up> <nop>
	nnoremap <down> <nop>
augroup END

" Lisp (*.el = ELisp, *.cl = Common Lisp, *.jl = librep Lisp)
"if has("fname_case")
"  au BufNewFile,BufRead *.lsp,*.lisp,*.el,*.cl,*.jl,*.L,.emacs,.sawfishrc setf lisp
"else
"  au BufNewFile,BufRead *.lsp,*.lisp,*.el,*.cl,*.jl,.emacs,.sawfishrc setf lisp
"endif
"
"if has('syntax') && has('eval')
"  packadd! matchit
"endif

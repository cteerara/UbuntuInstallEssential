"------- Vundle ------"
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"-------- General commands -------------""
set number
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set hlsearch
" Ctrl-o to toggle hidden characters
noremap <C-o> :set list!<CR>
set listchars=tab:>-
set listchars+=space:␣
set listchars+=eol:$
colorscheme delek
noremap <C-b> l   

"-------- Language Specific Hotkeys -------""
"--Python
autocmd FileType python map <buffer> <C-n> :/#<CR>:noh<CR>
autocmd FileType python map <buffer> <C-m> :?#<CR>:noh<CR>
autocmd FileType python map <buffer> <C-R> :s/^/#/<CR>:noh<CR>
autocmd FileType python map <buffer> <C-T> :s/#//<CR>:noh<CR>
"--c
autocmd FileType c map <buffer> <C-n> :/\/\/<CR>:noh<CR>
autocmd FileType c map <buffer> <C-m> :?\/\/<CR>:noh<CR>
autocmd FileType c map <buffer> <C-R> :s/^/\/\//<CR>:noh<CR>
autocmd FileType c map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
"--cpp
autocmd FileType cpp map <buffer> <C-n> :/\/\/<CR>:noh<CR>
autocmd FileType cpp map <buffer> <C-m> :?\/\/<CR>:noh<CR>
autocmd FileType cpp map <buffer> <C-R> :s/^/\/\//<CR>:noh<CR>
autocmd FileType cpp map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
"--Fortran
autocmd FileType fortran map <buffer> <C-n> :/!<CR>:noh<CR>
autocmd FileType fortran map <buffer> <C-m> :?!<CR>:noh<CR>
autocmd FileType fortran map <buffer> <C-R> :s/^/!/<CR>:noh<CR>
autocmd FileType fortran map <buffer> <C-T> :s/!//<CR>:noh<CR>
"--bash
autocmd FileType sh map <buffer> <C-n> :/#<CR>:noh<CR>
autocmd FileType sh map <buffer> <C-m> :?#<CR>:noh<CR>
autocmd FileType sh map <buffer> <C-R> :s/^/#/<CR>:noh<CR>
autocmd FileType sh map <buffer> <C-T> :s/#//<CR>:noh<CR>


"-------- New File Headers --------------""
"Create tex file header
autocmd bufnewfile *.tex so ~/Documents/tex_header.txt 

"Create c file header
autocmd bufnewfile *.c so ~/Documents/c_header.txt

"Create c++ file header
autocmd bufnewfile *.cpp so ~/Documents/cpp_header.txt

" Return to previous location when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"------- Pathogen for vim plugins --------""
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

"------- NERDTree commands ------"
"--Toggles
map <buffer> <C-n> :NERDTreeToggle<CR>
"-- Open NEARDTree when no specified files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif




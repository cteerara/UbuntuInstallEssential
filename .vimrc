"-------- General commands -------------""
set number
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set hlsearch

""-------- Comment shortkey --------------""
""--Python
"autocmd FileType python map <buffer> <C-Y> :s/^/#/<CR>:noh<CR>
"autocmd FileType python map <buffer> <C-T> :s/#//<CR>:noh<CR>
""--Fortran
"autocmd FileType fortran map <buffer> <C-R> :s/^/!/<CR>:noh<CR>
"autocmd FileType fortran map <buffer> <C-T> :s/!//<CR>:noh<CR>
""--c
"autocmd FileType c map <buffer> <C-R> :s/^/\/\//<CR>:noh<CR>
"autocmd FileType c map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
""--cpp
"autocmd FileType cpp map <buffer> <C-R> :s/^/\/\//<CR>:noh<CR>
"autocmd FileType cpp map <buffer> <C-T> :s/\/\///<CR>:noh<CR>


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


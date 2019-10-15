"-------- General commands -------------""
set number
set tabstop=2 shiftwidth=2 expandtab
set autoindent
set hlsearch

""-------- Comment shortkey --------------""
"--Python
autocmd FileType python map <buffer> <C-R> :s/^/#/<CR>:noh<CR>
autocmd FileType python map <buffer> <C-T> :s/#//<CR>:noh<CR>
"--Fortran
autocmd FileType fortran map <buffer> <C-R> :s/^/!/<CR>:noh<CR>
autocmd FileType fortran map <buffer> <C-T> :s/!//<CR>:noh<CR>
"--c
autocmd FileType c map <buffer> <C-R> :s/^/\/\//<CR>:noh<CR>
autocmd FileType c map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
"--cpp
autocmd FileType cpp map <buffer> <C-R> :s/^/\/\//<CR>:noh<CR>
autocmd FileType cpp map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
"-- bash
autocmd FileType sh map <buffer> <C-R> :s/^/#/<CR>:noh<CR>
autocmd FileType sh map <buffer> <C-T> :s/#//<CR>:noh<CR>

"""-------- Comment shortkey ctrl-y as comment instead of ctrl-r --------------""
""--Python
"autocmd FileType python map <buffer> <C-Y> :s/^/#/<CR>:noh<CR>
"autocmd FileType python map <buffer> <C-T> :s/#//<CR>:noh<CR>
""--Fortran
"autocmd FileType fortran map <buffer> <C-Y> :s/^/!/<CR>:noh<CR>
"autocmd FileType fortran map <buffer> <C-T> :s/!//<CR>:noh<CR>
""--c
"autocmd FileType c map <buffer> <C-Y> :s/^/\/\//<CR>:noh<CR>
"autocmd FileType c map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
""--cpp
"autocmd FileType cpp map <buffer> <C-Y> :s/^/\/\//<CR>:noh<CR>
"autocmd FileType cpp map <buffer> <C-T> :s/\/\///<CR>:noh<CR>
""-- bash
"autocmd FileType shell map <buffer> <C-Y> :s/^/#/<CR>:noh<CR>
"autocmd FileType shell map <buffer> <C-T> :s/#//<CR>:noh<CR>

"-------- New File Headers --------------""
"Create tex file header
autocmd bufnewfile *.tex so ~/Documents/tex_template.txt 

"Create c file header
autocmd bufnewfile *.c so ~/Documents/c_template.txt

"Create c++ file header
autocmd bufnewfile *.cpp so ~/Documents/cpp_template.txt

" Return to previous location when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"-------- New File Headers --------------""
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

"------- Pathogen for vim plugins --------""
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on


set number
set tabstop=2

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

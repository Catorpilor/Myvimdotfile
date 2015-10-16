execute pathogen#infect()
syntax on
set background=dark
" let g:solarized_termcolors=256
colorscheme solarized
let g:solarized_termtrans=1
filetype plugin indent on
" don't bother with vi compatibility
set nocompatible
set autoindent
set expandtab
set smarttab
set mouse=a
set backspace=2
set number
set ignorecase
set smartcase
set hlsearch
set modifiable
autocmd BufWritePre * :%s/\s\+$//e
" enable syntax highlighting

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:NERDSpaceDelims=1

let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :GoTest<CR>
nnoremap <leader>b :GoBuild<CR>
nnoremap <leader>r :GoRun<CR>




autocmd StdinReadPre * let s:std_in=1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%{fugitive#statusline()}  " git status of file

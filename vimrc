execute pathogen#infect()
syntax on
filetype plugin indent on
let g:python3_host_prog='/usr/bin/python'
" general setting.
set autoindent
set smarttab
set wildmenu
set encoding=utf8
set nu
set termguicolors       " enable true colors support
set background=dark     " dark theme
colorscheme nord
au BufWrite *.h,*.hpp,*.c,*.cpp,*.cxx,*.py,*.go :Autoformat
au BufWrite * :RemoveTrailingSpaces
" setting for nord.
source ~/.vim/nord.vim
" setting for key mapping.
source ~/.vim/mapping.vim
" setting for status line.
source ~/.vim/statusline.vim
" setting for vim-lsp.
source ~/.vim/lsp.vim
" setting for tagbar.
source ~/.vim/tagbar.vim
" constraint to check that the string is no more than 100 characters.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/

" setting for netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

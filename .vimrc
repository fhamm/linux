set nu

set wildmenu

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set autoindent
set smartindent

set laststatus=2

map <C-k> :cn<CR>
map <C-j> :cp<CR>
map <C-h> :cclose<CR>
autocmd FileType python map <buffer> <C-l> :call flake8#Flake8()<CR>

" PLUGINS
" For help, check junegunn/vim-plug on GitHub

" Automatically download vim-plug if it doesn't exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Manage plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'nvie/vim-flake8'

call plug#end()

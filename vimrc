" ==== Vundle config start ====
" Install Vundle with 
" $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Open vim and execute: ':PluginInstall'
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
" After :PluginInstall perform commands below:
" $ cd ~/.vim/bundle/YouCompleteMe
" $ python3 install.py
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on
" ==== Vundle config end ====



" ==== General config start
sy on
set t_Co=256
set nu
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set expandtab
set autoindent

" $ cd /tmp
" $ git clone git@github.com:sickill/vim-monokai.git
" $ mkdir -p ~/.vim/colors
" $ cp vim-monokai/colors/monokai.vim ~/.vim/colors/
color monokai
autocmd vimenter * NERDTree
" ==== General config end ===



" ==== Python config start ====
set encoding=utf-8
function SetPythonOptions()
    let python_highlight_all=1
    set textwidth=79
    set fileformat=unix
endfunction

au BufNewFile,BufRead *.py call SetPythonOptions()
" ==== Python config end ====


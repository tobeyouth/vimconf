syntax on

" vim setting
set nocompatible
set backspace=2
set ruler
set encoding=utf-8
set showmatch
set bs=2
set ai
set autoread
set number
set cursorline
set foldmethod=syntax
set mouse=a

"conf for tabs
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

" space & tab
set expandtab
set tabstop=4
set shiftwidth=4

" color
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

" size
set textwidth=120


"状态栏的配置 
" powerline{
    set guifont=PowerlineSymbols\ for\ Powerline
    set nocompatible
    set t_Co=256
    let g:Powerline_symbols = 'fancy'
" }

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ai
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sw=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sts=4

autocmd FileType javascript,html,css,scss,sass,less,jsx,xml set ai
autocmd FileType javascript,html,css,scss,sass,less,jsx,xml set sw=2
autocmd FileType javascript,html,css,scss,sass,less,jsx,xml set ts=2
autocmd FileType javascript,html,css,scss,sass,less,jsx,xml set sts=2

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

autocmd bufnewfile *.py 0r ~/.vim/template/python_header 

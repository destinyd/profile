set nocompatible               " be iMproved
set fileencodings=utf-8 ",gbk,default,ucs-bom,latin1
set guifontset=-dt-interface
set encoding=utf-8
let $Lang="zh_CN.UTF-8"
let g:snips_author = "Killua.DD"
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 Bundle 'rails.vim'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " php
 Bundle 'vim-scripts/snipMate'
 " ...
 " other need
 Bundle 'AutoComplPop'
" Bundle 'NeoComplCache'
 Bundle 'fakeclip'
 Bundle 'tpope/vim-surround'
 " DirBrowser
 Bundle 'scrooloose/nerdtree'
 Bundle 'FindInNERDTree'
 Bundle 'The-NERD-Commenter'
 Bundle 'taglist.vim'
 Bundle 'nelson/cscope_maps'
 Bundle 'vcscommand.vim'
 Bundle 'vim-scripts/qiushibaike'
 Bundle 'jsbeautify'
 Bundle 'xml.vim'
 Bundle 'auto_mkdir'
 Bundle 'Align'
 Bundle 'serverhorror/javascript.vim'
 Bundle 'matchit.zip'
 Bundle 'AuthorInfo'
 Bundle 'scrooloose/nerdcommenter'
 Bundle 'rson/vim-conque'

 filetype plugin indent on     " required! 
 "
 " Brief help
 "
 " :BundleInstall  - install bundles (won't update installed)
 " :BundleInstall! - update if installed
 "
 " :Bundles foo    - search for foo
 " :Bundles! foo   - refresh cached list and search for foo
 "
 " :BundleClean    - confirm removal of unused bundles
 " :BundleClean!   - remove without confirmation
 "
 " see :h vundle for more details
 " or wiki for FAQ
 " Note: comments after Bundle command are not allowed..

" Enable syntax highlight
syntax enable
 
" Show line number
"set nu
" show matching bracets
set showmatch
 
" Basic editing options
set expandtab
set shiftwidth=2
 
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
 
set smarttab
set lbr
set tw=0
 
"Auto indent
set ai
 
" Smart indet
set si
 
" C-style indeting
"set cindent
 
" Wrap lines
set wrap
 
" Turn backup off
set nobackup
set nowb
set noswapfile
" smart backspace
set backspace=start,indent,eol

colo murphy " 颜色
" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>

map <F1> :FufFile<CR>
map <F2> :FufBuffer<CR>
map <F3> :FufDir<CR>
map <F4> :TlistOpen<CR>

map <F5> :NERDTreeToggle<CR>
 
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
nnoremap <silent> <C-f> :call FindInNERDTree()<CR>

let g:vimrc_author='Killua DestinyD' 
let g:vimrc_email='destinyd.war@gmail.com' 
let g:vimrc_homepage='' 
nmap <F6> :AuthorInfoDetect<cr> 

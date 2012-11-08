set nocompatible               " be iMproved
set fileencodings=utf-8,gbk,default,ucs-bom,latin1
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

"系统类的
"文件操作
"Bundle 'tpope/vim-eunuch'


"html to text
Bundle 'plasticboy/vim-markdown'


" My Bundles here:
"
" original repos on github
" Gcommit...  git
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" be bs bv buffer理打开过去文件
Bundle 'bufexplorer.zip' 
" vim-scripts repos
Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle "tpope/vim-cucumber"
Bundle "tpope/vim-rails"
Bundle "taq/vim-rspec"
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" snipMate 
Bundle 'vim-scripts/snipMate'
" ...
" other need
Bundle 'AutoComplPop'
" Bundle 'NeoComplCache'
" 剪贴板
" Bundle 'fakeclip'
"cs cst ds 两旁添加符号
Bundle 'tpope/vim-surround' 
" DirBrowser
"Bundle 'scrooloose/nerdtree'
"Bundle 'FindInNERDTree'
" Bundle 'The-NERD-Commenter'
Bundle 'taglist.vim'
" Bundle 'nelson/cscope_maps'
" svn git等 通用命令
" Bundle 'vcscommand.vim'
Bundle 'vim-scripts/qiushibaike'
Bundle 'jsbeautify'
"Bundle 'xml.vim'
Bundle 'auto_mkdir'
Bundle 'Align'
" 取消？
"Bundle 'serverhorror/javascript.vim'
" % 可以跳html标签
Bundle 'matchit.zip' 
Bundle 'AuthorInfo'
" ,cc ,cu ,c<space>
Bundle 'scrooloose/nerdcommenter'
"命令行 ConqueTeam
Bundle 'rson/vim-conque' 
" 自己设的,ct 
Bundle 'wincent/Command-T'
"tab 完成
" Bundle 'ervandew/supertab' 
" c-w o 全屏  自己,,
Bundle 'vim-scripts/ZoomWin' 
" 结束def end填充
Bundle 'tpope/vim-endwise' 
" 检查错误
Bundle "scrooloose/syntastic" 
" 重构工具
Bundle "ecomba/vim-ruby-refactoring" 
"不成熟
"Bundle "danchoi/ri_vim"

Bundle "kchmck/vim-coffee-script"
"grep in vim 比较老"
Bundle "grep.vim"

" cool status bar
Bundle "Lokaltog/vim-powerline"
"let g:Powerline_symbols = 'fancy'
set t_Co=256

Bundle "kien/ctrlp.vim"

" ' " 闭合
Bundle "Raimondi/delimitMate"
"tpope 专场
Bundle "tpope/vim-unimpaired"

" rails
Bundle "tpope/vim-bundler"
Bundle "tpope/vim-rake"
"eruby highlight 和snip % 之类冲突
"Bundle "banyan/eruby.vim"
Bundle "briancollins/vim-jst"

"thor 脚本
Bundle "jc00ke/thor.vim"

"Riv: reStructuredText in Vim
Bundle "Rykka/riv.vim"


" Bundle 'tpope/vim-unimpaired' " [uu Url encode 等等
"Bundle "tpope/vim-haml"
"Bundle "rails.vim"
"Bundle "rubycomplete.vim"
"Bundle "Townk/vim-autoclose"
"Bundle "vim-scripts/taglist.vim"

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

""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""
"忽略大小写
set ignorecase
"搜索高亮
set hlsearch
set incsearch
set smartcase

"""""""""""""""""""""""""""""""""""""
" Status bar
"""""""""""""""""""""""""""""""""""""
set laststatus=2
""""""""""""""""""""""""""""""""""""""
" Tab completion
""""""""""""""""""""""""""""""""""""""
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

"""""""""""""""""""""""""""""""""""""""
" 空行
"""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set list listchars=tab:\ \ ,trail:·
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
"tab自动填充
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

" C-style indeting
"set cindent

" Wrap lines
set wrap

" Turn backup off
set nobackup
set nowb
set noswapfile
" Directories for swp files
set backupdir=~/.vim/swaps
set directory=~/.vim/swaps
" smart backspace
"
set backspace=start,indent,eol
" allow backspacing over everything in insert mode
"set backspace=indent,eol,start

" Default color scheme
"silent! color cocoa
"set background=dark



" Show (partial) command in the status line
set showcmd

colo murphy " 颜色
" Use modeline overrides
set modeline
set modelines=10

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

"参数
let g:CommandTMaxFiles=20000
set wildignore+=public/images,public/system,data,images

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:vimrc_author='Killua DestinyD' 
let g:vimrc_email='destinyd.war@gmail.com' 
let g:vimrc_homepage='' 

"状态栏
set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y
highlight StatusLine term=bold,reverse cterm=bold,reverse


"""""""""""""""""""""""""""""""""""""""""""
" KEYMAPS
"""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" switch buffers with Tab
" map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>

"map <F2> :FufFile<CR>
"map <F3> :FufBuffer<CR>
map <F4> :TlistOpen<CR>
"map <F5> :NERDTreeToggle<CR>
nmap <F6> :AuthorInfoDetect<cr> 
"简单换窗
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <Leader><Leader> :ZoomWin<CR>
map <C-\> :tnext<CR>
"map <C-p> :Ctrlp<CR>

map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
map <C-N> :FufCoverageFile<CR>
map <A-N> :FufBuffer<CR>
imap <C-SPACE> <C-p>
imap <C-A-SPACE> <C-x><C-]>
map <C-s> :w<CR>
imap <C-s> :w<CR>
nmap <C-s> :w<CR>
map <C-A-s> :wall<CR>
" 我
map <Leader>tn :tabnew<CR>
map <Leader>ct :CommandT <CR>
map <Leader>ss :w !sudo tee % <CR>

"外部粘贴
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

" ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

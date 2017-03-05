set nocompatible               " be iMproved
set fileencodings=utf-8,gbk,default,ucs-bom,latin1
set guifontset=-dt-interface
set encoding=utf-8
let $Lang="zh_CN.UTF-8"
let g:snips_author = "Killua.DD"
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/vundle.vim'

"系统类的
"文件操作, 可能要注意安全
Plugin 'tpope/vim-eunuch'

"html to text
" 基本没用上
"Plugin 'tpope/vim-markdown'
"markdown preview
"Plugin 'greyblake/vim-preview'
"访问
":nmap <Leader>\ :Preview<CR>

" My Bundles here:
"
" original repos on github
" Gcommit...  git
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" be bs bv buffer理打开过去文件
Plugin 'bufexplorer.zip' 
" vim-scripts repos
Plugin 'L9'
"Plugin 'FuzzyFinder'
"Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-rails'
"Plugin 'taq/vim-rspec'
" non github repos
" Plugin 'git://git.wincent.com/command-t.git'
" snipMate 
"Plugin 'vim-scripts/snipMate'

" 替代 snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" ...
" other need 自动弹出菜单？ 太老
"Plugin 'AutoComplPop'
" Plugin 'NeoComplCache'
" 剪贴板
" Plugin 'fakeclip'
"cs cst ds 两旁添加符号
"Plugin 'tpope/vim-surround'
" DirBrowser
"Plugin 'scrooloose/nerdtree'
"Plugin 'FindInNERDTree'
" Plugin 'The-NERD-Commenter'
Plugin 'taglist.vim'
" Plugin 'nelson/cscope_maps'
" svn git等 通用命令
" Plugin 'vcscommand.vim'
"Plugin 'vim-scripts/qiushibaike'
" js 缩进？太老
"Plugin 'jsbeautify'
"Plugin 'xml.vim'
Plugin 'auto_mkdir'
" 自动缩进排序什么的 (=?) 不太懂具体设置
Plugin 'Align'
" % 可以跳html标签
Plugin 'matchit.zip' 
" 改为 F6
Plugin 'AuthorInfo'
" ,cc ,cu ,c<space> 注释
Plugin 'scrooloose/nerdcommenter'
"命令行 ConqueTeam
"Plugin 'rson/vim-conque' 
" 自己设的,ct h和ctrlp同类
"Plugin 'wincent/Command-T'
"tab 完成
" Plugin 'ervandew/supertab' 
" c-w o 全屏  自己,,
Plugin 'vim-scripts/ZoomWin' 
" 结束def end填充
Plugin 'tpope/vim-endwise' 
" 检查错误
"Plugin 'scrooloose/syntastic'
" 重构工具
" 两年前了
"Plugin 'ecomba/vim-ruby-refactoring'

" cool status bar
Plugin 'lokaltog/vim-powerline'

" 快速查找文件,如commentT
Plugin 'ctrlpvim/ctrlp.vim'

" ' " 闭合
Plugin 'raimondi/delimitmate'

"tpope 专场
Plugin 'tpope/vim-unimpaired'
" rails
" guard代替了
"Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
"eruby highlight 和snip % 之类冲突
"Plugin 'banyan/eruby.vim'
"tpope 专场 end

"thor 脚本
"Plugin 'jc00ke/thor.vim'

"new 
Plugin 'othree/html5.vim'

"13-03-13
" 自动补齐、填充
Plugin 'shougo/neocomplcache'

"scss
Plugin 'cakebaker/scss-syntax.vim'

"2014-02-25
"git 差异对比
"Plugin 'airblade/vim-gitgutter'
Plugin 'vim-ruby/vim-ruby'
"代码检查
"Plugin 'scrooloose/syntastic'

"ruby motion暂时不用
"Plugin 'rcyrus/snipmate-snippets-rubymotion'

" javascript
" vim-jst需求
Plugin 'pangloss/vim-javascript'
" jst/ejs高亮缩进 rails js模板 js erb
"Plugin 'briancollins/vim-jst'
Plugin 'isRuslan/vim-es6'

" coffeescript
Plugin 'kchmck/vim-coffee-script'
" cjsx
Plugin 'mtscout6/vim-cjsx'
" coffeescript end
" javascript end

" slim
Plugin 'slim-template/vim-slim'

" wechat
Plugin 'chemzqm/wxapp.vim'

filetype plugin indent on     " required! 
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
"let g:syntastic_quiet_warnings=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
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
"map <Leader>ct :CommandT <CR>
map <Leader>ss :w !sudo tee % <CR>
map <Leader>cpc :CoffeeCompile vert<CR><CR>

"外部粘贴
vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p

" ctrlp start
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/log/*,*/public/assets/*,*/node_modules/*
set wildignore+=_www/* " jekyll
set wildignore+=dist/* " node

"let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|dist|\_www)$',
  \ 'file': '\.exe$\|\.so$\|\.dll|\.je?pg|\.png|\.gif$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" ctrlp end

"##### auto fcitx  ###########
let g:input_toggle = 1
function! Fcitx2en()
   let s:input_status = system("fcitx-remote")
   if s:input_status == 2
      let g:input_toggle = 1
      let l:a = system("fcitx-remote -c")
   endif
endfunction

function! Fcitx2zh()
   let s:input_status = system("fcitx-remote")
   if s:input_status != 2 && g:input_toggle == 1
      let l:a = system("fcitx-remote -o")
      let g:input_toggle = 0
   endif
endfunction

set timeoutlen=150
"退出插入模式
autocmd InsertLeave * call Fcitx2en()
"进入插入模式
autocmd InsertEnter * call Fcitx2zh()
"##### auto fcitx end ######
"
" 修复slim识别错误BUG
autocmd BufNewFile,BufRead *.slim set ft=slim

" easymotion
"
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
"
" easymotion end

" powerline start
"let g:Powerline_symbols = 'fancy'
set t_Co=256
" powerline end

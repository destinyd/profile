set nocompatible               " be iMproved
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,default,ucs-bom,cp936,gb18030,big5,latin1
"set fileencodings=ucs-bom,utf-8,chinese,cp936,latin1
"set fileencodings=utf-8,gbk,latin1
set guifontset=-dt-interface
"set fencs=utf8,gbk,gb2312,gb18030
let $Lang="zh_CN.UTF-8"
let g:snips_author = "DestinyD"
filetype off                   " required!

" 支持代码折叠, zf zc zr
set foldenable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/vundle.vim'

" 快速移动到目标位置
"Plugin 'FuzzyFinder'
Plugin 'easymotion/vim-easymotion'
"NeoBundle 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch.vim'
"Plug 'haya14busa/incsearch.vim'
"NeoBundle 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch-easymotion.vim'
"Plug 'haya14busa/incsearch-easymotion.vim'
"NeoBundle 'haya14busa/incsearch-fuzzy.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
"Plug 'haya14busa/incsearch-fuzzy.vim'

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzy#converter()],
  \   'modules': [incsearch#config#easymotion#module()],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
noremap <silent><expr> z/ incsearch#go(<SID>config_easyfuzzymotion())

" 替代snipmate，搭配YouCompleteMe
" 未测
Plugin 'sirver/ultisnips'
" UltiSnips 以及自动填充冲突修改
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"" Optional:
" 未测
Plugin 'honza/vim-snippets'

" 自动填充
" 未测
Plugin 'Valloric/YouCompleteMe'
" YouCompleteMe 配置
" let g:ycm_path_to_python_interpreter="/usr/local/bin/python2"
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \   'css': [ 're!^\s{4}', 're!:\s+'],
  \   'html': [ '</' ],
  \ }

" 文字 start
" v选中Y 输入符号:  给选中内容加符号
" ds符号删除
" cs符号符号:       符号替换
" ys位移*n符号:     给位移选中内容加符号
Plugin 'tpope/vim-surround'

" c<space>,cc ,cu  注释
Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" 文字 end
" 操作类 end

"系统类的
"文件操作, 可能要注意安全
Plugin 'tpope/vim-eunuch'
" 自动创建前置目录
Plugin 'auto_mkdir'
" f5 显示目录
Plugin 'scrooloose/nerdtree'
" be bs bv buffer理打开过去文件
Plugin 'bufexplorer.zip' 
" 快速查找文件
" ctrlp start
" ctrl+p
Plugin 'ctrlpvim/ctrlp.vim'
" ctrlp配置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/log/*,*/public/assets/*,*/node_modules/*
set wildignore+=_www/* " jekyll
set wildignore+=dist/* " node
set wildignore+=*/.git/*,*/.svn/*,*/.hg/* " node

"let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|dist|\_www|node_modules|doc|tmp)$',
  \ 'file': '\v\.(exe|so|dll|je?pg|png|gif)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"let g:ctrlp_working_path_mode = 'ra'
"\ 'link': 'some_bad_symbolic_links',
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/](doc|tmp|node_modules)',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ }
" ctrlp end
" ctrl+f 通过 ag 查找当前单词定义，并配合 fzf 快速打开

Plugin 'lokikl/vim-ctrlp-ag'
"nnoremap <c-f> :CtrlPag<cr>
"vnoremap <c-f> :CtrlPagVisual<cr>
nnoremap <C-g> :CtrlPag<cr>
vnoremap <C-g> :CtrlPagVisual<cr>
nnoremap <Leader>cg :CtrlPagLocate
nnoremap <Leader>cp :CtrlPagPrevious<cr>
let g:ctrlp_ag_ignores = '--ignore .git
    \ --ignore "deps/*"
    \ --ignore "_build/*"
    \ --ignore "node_modules/*"'

"Plugin 'Chun-Yang/vim-action-ag'
" ctrl + shift + f 全文搜索
"Plugin 'dyng/ctrlsf.vim'
"nmap     <D-S-F>f <Plug>CtrlSFPrompt
"vmap     <D-S-F>f <Plug>CtrlSFVwordPath
"vmap     <D-S-F>F <Plug>CtrlSFVwordExec
"nmap     <D-S-F>n <Plug>CtrlSFCwordPath
"nmap     <D-S-F>p <Plug>CtrlSFPwordPath
"nnoremap <D-S-F>o :CtrlSFOpen<CR>
"nnoremap <D-S-F>t :CtrlSFToggle<CR>
"inoremap <D-S-F>t <Esc>:CtrlSFToggle<CR>
" 全文检索 Cmd+Shift+f
Plugin 'wincent/ferret'
nmap     <D-F> :Ack<Space>

" 项目
" git
Plugin 'tpope/vim-fugitive'

" 开发
"   通用
"     结束def end填充
Plugin 'tpope/vim-endwise' 

"---后端---start---
" ruby start
"Plugin 'tpope/vim-cucumber'
" guard 代替, 没有必要
"Plugin 'thoughtbot/vim-rspec'

" rails start
Plugin 'tpope/vim-rails'
" rails end
" ruby end

" rust start
Plugin 'rust-lang/rust.vim'
let g:rust_clip_command = 'pbcopy'
" rust end
"---后端---end---

"---前端---start
"   html start
"     % 可以跳html标签
Plugin 'matchit.zip'

" 多行多层级加 html 标签--没必要
"Plugin 'mattn/emmet-vim'
"   html end

"   类 html 标记 start
Plugin 'slim-template/vim-slim'
autocmd BufNewFile,BufRead *.slim set ft=slim
"   类 html 标记 end

"   scss start
"Plugin 'shmargum/vim-sass-colors' " FIXME 卡卡卡卡卡 ?
"   scss end
"---前端---end

" 还在用？？？
"Plugin 'taglist.vim'
"Plugin 'Align'

" 改为 F6
" AuthorInfoDetect 失败
" 不希望让人晓得是我写的！！！
"Plugin 'AuthorInfo'


" ...
" 剪贴板
" Plugin 'fakeclip'
" Plugin 'nelson/cscope_maps'
"Plugin 'vim-scripts/qiushibaike'
" js 缩进？太老
"Plugin 'jsbeautify'
"Plugin 'xml.vim'
" 自动缩进排序什么的 (=?) 不太懂具体设置
" Jade语法的编写HTML div>p#foo$*3>a  <c-y>

"命令行 ConqueTeam
"Plugin 'rson/vim-conque' 
"tab 完成
" Plugin 'ervandew/supertab' 
" 检查错误
"Plugin 'scrooloose/syntastic'
" 重构工具
" 两年前了
"Plugin 'ecomba/vim-ruby-refactoring'

" cool status bar
Plugin 'lokaltog/vim-powerline'

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

" 前端 start
" css
Plugin 'hail2u/vim-css3-syntax'
"scss
Plugin 'cakebaker/scss-syntax.vim'

"   javascript start
"   vim-jst需求
Plugin 'pangloss/vim-javascript'
"   jst/ejs高亮缩进 rails js模板 js erb
"Plugin 'briancollins/vim-jst'
Plugin 'isRuslan/vim-es6'

"   jsx
Plugin 'mxw/vim-jsx'

Plugin 'marijnh/tern_for_vim'

"   wechat
"Plugin 'chemzqm/wxapp.vim'
"   javascript end
" 前端 end


" ruby start
Plugin 'chase/vim-ansible-yaml'
Plugin 'vim-ruby/vim-ruby'
"代码检查
"Plugin 'scrooloose/syntastic'

"ruby motion暂时不用
"Plugin 'rcyrus/snipmate-snippets-rubymotion'

"   coffeescript start
"Plugin 'kchmck/vim-coffee-script'
" cjsx
"Plugin 'mtscout6/vim-cjsx'
"   coffeescript end
Plugin 'ngmy/vim-rubocop'
" ruby end

" 代码风格检查
Plugin 'scrooloose/syntastic'

" 自动补全
"Plugin 'valloric/youcompleteme'

" 修复macos输入法BUG? 不见了
"Plugin 'chenhouwu/vim-macos-ime'

" 重构
"   批量选择
Plugin 'terryma/vim-multiple-cursors'

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

" javascript
let javascript_enable_domhtmlcss = 1
"let g:syntastic_javsacript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['eslint', 'jsxhint']
"let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

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
"map <F5> :TlistOpen<CR>
map <F5> :NERDTreeToggle<CR>
nmap <F6> :AuthorInfoDetect<cr> 
"简单换窗
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <C-\> :tnext<CR>

map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>
" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv
"map <C-N> :FufCoverageFile<CR>
"map <A-N> :FufBuffer<CR>
imap <C-SPACE> <C-p>
imap <C-A-SPACE> <C-x><C-]>
"map <C-s> :w<CR>
"imap <C-s> :w<CR>
"nmap <C-s> :w<CR>
map <C-A-s> :wall<CR>
" 我
map <Leader>tn :tabnew<CR>
"map <Leader>ct :CommandT <CR>
map <Leader>ss :w !sudo tee % <CR>
map <Leader>cpc :CoffeeCompile vert<CR><CR>

"外部粘贴
"vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p


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


" powerline start
"let g:Powerline_symbols = 'fancy'
set t_Co=256
" powerline end

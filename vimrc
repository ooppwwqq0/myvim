" Myset {{{
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={{{,}}} foldlevel=0 foldmethod=marker:
" ==========================================
" vim 配置文件 --- casstiel
" ==========================================
" }}}

" custom settings {{{
" 加载插件管理器插件 pathogen.vim
"call pathogen#infect()

" 开启语法高亮
syntax enable
syntax on

" 开启插件, 如果vim里面装了插件必须要开启此选项才可以用插件,
" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" 自动载入_vimrc文件，使得我们对vim的定制立即生效，无需重启
"autocmd! bufwritepost vimrc source %

" -----------------------------  vim 属性设置 --------------------------------
set modeline
set langmenu=zh_CN.UTF-8
set foldmethod=indent
set list
set listchars=tab:>-,trail:-
"au BufRead *.py map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>

" 设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 不需要可以去掉
set t_ti= t_te=
set nocompatible                    " 不兼容vi模式, 关掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set encoding=utf8                   " 设置编码
set termencoding=utf-8              " 设置编码
set fileencoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=utf-8,chinese,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn                     " 显示中文帮助
set fileformats=unix                " 设置文件格式
set cc=120                          " 红线位置
set tabstop=4                       " Tab键的宽度, 4个空格
set shiftwidth=4                    " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4                   " 统一缩进为4, 用4个空格代替1个tab
set smarttab                        " 一次性删除多个空格, 只在行首用tab，其他地方的tab都用空格代替
set expandtab                       " 使用空格代替tab , 如果要使用indent插件一定要开启这个
"set noexpandtab                    " 不要用空格代替制表符, set expandtab 用空格代替制表符
set shiftround                      " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set cindent                          " 开启C/C++风格缩进，:set paste 关闭缩进，nopaste打开
set smartindent                     " 智能对齐方式
set autoindent                      " automatically indent new line, 自动对齐
set showmatch                       " 高亮显示匹配括号, 在输入括号时光标会短暂地跳到与之相匹配的括号处
set matchtime=2                     " 匹配括号高亮的时间（单位是十分之一秒）
set lbr                             " 智能换行
set wrap                            " wrap(弯曲),允许backspace和光标键跨越行边界(不建议), 自动换行, 可以按backspace可以自动到头了可以换行
set textwidth=0                     " 总不自动换行, 它的简写set tw = xxx 表示文本宽度是多少自动换行(回车效果)
set number                          " 显示行号
set numberwidth=3                   " 行号宽度
set nowrap                          " 取消换行
" set showcmd                         " 输入的命令显示出来，看的清楚些 ，win有用
set ruler                           " 显示标尺
set showmode                        " 左下角显示当前vim模式
"set wildmenu                       " 使回格键（backspace）正常处理indent, eol, start等 win有用
set wildmode=list:longest,full      " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）, win下有用
set laststatus=2                    " 启动显示状态行(1),总是显示状态行(2)
set mouse=a                         " 充许使用鼠标, 值对win有用
"set mousehide                      " 隐藏鼠标，当是文本的处于编辑的时候, win有用
set autoread                        " 当文件内容被其他编辑器改变时自动加载
set backspace=eol,start,indent      " 插入模式下允许回格键删除字符, win下有用
set completeopt=menuone,longest     " 打开文件类型检测, 加了这句才可以用智能补全, 弹出提示框
"set completeopt=longest,menu
set nobackup                        " 禁止生成临时文件
set noswapfile                      " 不要生成swap文件, 简写 set nowb
"set whichwrap+=<,>,h,l              " 当光标到达行尾或者行首时，继续移动转至下一行或者上一行, win有用
set wildignore=.svn,.git,*.swp,*.bak,*~,*.o,*.a,*.pyc  " 用于目录插件NERD_tree上，打开目录忽略这些文件
set tags=tags;                      " 开启tags，方便自动提示,以及搜索,必开 ,因为taglist(左边的函数列表插件)用的到
set bsdir=buffer                    " 用于目录插件上，打开目录为当前文件目录
set autochdir                       " 用于目录插件上，比如taglist(函数列表插件)自动加载文件中的子目录（比如加载变量目录下面的所有变量）
set virtualedit=block,onemore       " 光标可以移动到没有写字的地方，比如空白处
set t_vb=                           " 不使用响铃，不闪屏, 好像是光标移动到结束的地方不会响
set dy=lastline                     " 当文件太长时，打开不会显示@@符号的字样
setlocal foldlevel=10               " 折叠层级, 最多最外层这贴包含多少个折叠
"set ambiwidth=double               " 防止特殊符号无法正常显示, 这个开启之后会影响tab缩进, 并且插件indent中如果对齐符号改成'┆' 也要关闭这个tab建才不会有问题
set confirm                         " 在处理未保护或只读文件的时候，弹出确认
set scrolloff=7                     " 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set history=1000                    " 历史记录数, 针对Mru插件显示最近100条打开的文件
set pumheight=30                    " 智能提示框层的高度
"set cinoptions=:0,l1,g0,t0,(0,(s   " c语言语法的自动缩进
set magic                           " 选择括号自动匹对闭合的括号
set showtabline=2                   " 显示tab显示框,默认也是开的
setlocal cursorline                 " 高亮当前行
setlocal cursorcolumn               " 高亮当前列
" set backupcopy=yes                " 备份的同名文件进行覆盖, 前提是需要开启备份缓存swap
" set clipboard+=unnamed            " 在win下有可能QQ啥的的剪切到剪切板的数据没有办法copy到vim中,需要设置这个
" set linebreak                     " 牛逼没搞清楚
set hidden                        " 牛逼没搞清楚, enable multiple modified buffers
" set guioptions=''                 " 无菜单、无工具 go=guioptions
" set guioptions-=m                 " 不显示工具条
" set guioptions-=T                 " 不显示工具条
" set guioptions+=b                 " 显示横向滚动条
" set guitablabel=%N:\ %f           " tab完全显示路径名
" set iskeyword+=_,$,@,%,#,-        " 带有如下符号的单词不要被换行分割
" set cmdheight=2                   " 命令行（在状态行下）的高度，默认为1，这里是2
" set report=0                      " 通过使用: commands命令，告诉我们文件的哪一行被改变过
" set shortmess=atI                 " 启动的时候不显示那个援助索马里儿童的提示


" 鼠标点哪里，光标到哪里，针对6.3的gvim版本, 新版本不用
"set selection=exclusive
"set selection=inclusive
"set selectmode=mouse,key

" change the terminal's title
set title
" 去掉输入错误的提示声音
set novisualbell
set noerrorbells
set t_vb=
set tm=500

" 搜索
set incsearch                       " 当vi中查找的时候从键入时就开始匹配
set hlsearch                        " 高亮搜索结果
set ignorecase                      " 搜索时不区分大小写，如果键入了大写字母则区分大小写
set smartcase                       " 如果使用插件搜索补全的时候，有相同的不要覆盖,都搜索出来

" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99
" 代码折叠自定义快捷键 <leader>zz
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

" 撤销配置，在vim新版, 才有用
set undodir=~/tmp/                  " 撤销缓存目录
set undofile                        " 撤销文件, 当关闭文件之后，重新打开还可以无限撤销到最原始的文件

" 每次打开文件自动定位最后的编辑文件一行
set report=0    " 这个设置不设置在这个版本没关系
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif


" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" 防止tmux下vim的背景色显示异常
if &term =~ '256color'
  set t_ut=
endif

" }}}

" 快捷键设置 {{{
"==========================================
" casstiel Settings  自定义快捷键设置
"==========================================

" 主要按键重定义

" 修改leader键
let mapleader = ','
let g:mapleader = ','

" 关闭方向键, 强迫自己用 hjkl
"map <Left> <Nop>
"map <Right> <Nop>
"map <Up> <Nop>
"map <Down> <Nop>

" 分屏窗口移动, Smart way to move between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

" F1 - F6 设置
" F1 废弃这个键,防止调出系统帮助
" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>"
map <F2> :NERDTreeToggle<CR>   " NERDTree目录树开关切换
map <F3> :TagbarToggle<CR>      " taglist标签列表开关切换
"map <F4> :TlistToggle<CR>      " taglist标签列表开关切换

" 按键替换"
" Go to home and end using capitalized directions
noremap H ^
noremap L $

" Map ; to : and save a million keystrokes 用于快速进入命令行
nnoremap ; :

" switch # *
nnoremap # *
nnoremap * #

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" select all
map <Leader>sa ggVG

" select block
nnoremap <leader>v V`}

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" kj 替换 Esc
inoremap kj <Esc>

" Quickly close the current window
nnoremap <leader>q :q<CR>

" Quickly save the current file
nnoremap <leader>w :w<CR>

" remap U to <C-r> for easier redo
nnoremap U <C-r>

"系统粘贴板操作
vnoremap <leader>y "+y"
vnoremap <leader>c "+y"
vnoremap <leader>v "+gp

" y$ -> Y Make Y behave like other capitals
map Y y$

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"快速打开折叠"
nnoremap <space> za

" 格式化json数据
map <C-F> :%!python -m json.tool<cr>
"map <C-F> :w<cr>:!/usr/bin/python %<cr>

" ,,m 打开MRU
nmap <Leader><Leader>m :MRU<CR>

inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>

function! ClosePair(char)
  if getline('.')[col('.')-1] == a:char
    return "\<Right>"
  else
    return a:char
  endif
endfunction

" 3.Ctrl+S实现保存，如果未命名文件名会提示你选择保存路径和文件名，gui（gvim 命令）下有效, 且win才有效
"map <silent> <C-S> :if expand("%") == ""<CR>:browse confirm w<CR>:else<CR>:confirm w<CR>:endif<CR>
"map mm '.zz
"map <silent> <leader>ske :call ToggleSketch()<CR>
"map <silent> <leader>b :bn<cr>
"map <silent> <leader>n :bp<cr>
"nnoremap <C-TAB> :tabnext<CR>
" }}}

" 插件设置 {{{
"在使用bundle安装插件之前，需要先安装vundle插件

" install bundles
if filereadable(expand("~/.vim/config/vimrc.bundles"))
    source ~/.vim/config/vimrc.bundles
endif

"source ~/.vim/config/python_fold.vim
" }}}

" gvim settings {{{
" 根据是运行gvim 还是 在终端运行vim来判断使用哪个配色方案
if has("gui_macvim") || has("gui_running")
    " 修改字体和大小
    set guifont=Monaco:h14
    if has("gui_gtk2")   "GTK2
        set guifont=Monaco\ 12,Monospace\ 12
    endif
    set guioptions-=T
    set guioptions+=e
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
    set showtabline=2
    set linespace=2
    set noimd
    "set gfn=Andale\ Mono\ Regular:h15,Menlo\ Regular:h15,Consolas\ Regular:h15,Courier\ New\ Regular:h15
    " 取消默认的快捷键
    "let macvim_skip_cmd_opt_movement = 1
    "let macvim_hig_shift_movement = 1
    "设置背景透明度
    set transparency=10
    set fullscreen

    set linespace=3     	" 行间距
    set columns=100    		" 初始窗口的宽度
    set lines=30       		" 初始窗口的高度
    au FileType php,python,c,java,javascript,html,htm,smarty,json setl cursorline   " 高亮当前行
    au FileType php,python,c,java,javascript,html,htm,smarty,json setl cursorcolumn " 高亮当前列
else
    set linespace=3
    set columns=180
    set lines=45
    " 终端时的背景颜色
    hi Pmenu ctermbg=black
    " 当在终端使用时，弹出提示框内的文本的高亮的颜色
    hi PmenuSel ctermfg=0 ctermbg=lightblue
endif

" }}}

" theme主题 {{{
if has("autocmd")
    " Highlight TODO, FIXME, NOTE, etc.
    if v:version > 701
        autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
        autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
    endif
endif

set background=dark
set t_Co=256       		" 让终端支持256色，否则很多配色不会正常显示，molokai就是其中之一
colorscheme molokai " 设置颜色方案, 配置方案的文件在.vim/colors中
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
" }}}

" file format {{{
" 把html文件当作xml文件来编辑，因为html按=号格式化有问题，而xml没问题
au FileType smarty,html set ft=xml
au FileType smarty,html set syntax=html " 语法高亮还是用html自身的高亮
" xmledit
let xml_use_xhtml = 1

" 当编辑php文件的时候，导入PHP函数列表，按 ctrl+n 自动补全
"au FileType php call AddPHPFuncList() " 有neocomplacache都不用这些函数了，自带的
function! AddPHPFuncList()
    set dict-=~/.vim/php_funclist.txt dict+=~/.vim/php_funclist.txt
    set complete-=k complete+=k
endfunction

" }}}

" statusline settings {{{
" 设置用窗口打开文件之后，窗口最下面显示文件的完整路径
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}/%h\ \ \ Line:\ %l/%L:%c
" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l/%L,%v][%p%%]
"function! CurDir()
"    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
"    return curdir
"endfunction
"
"function! HasPaste()
"    if &paste
"        return 'PASTE MODE  '
"    else
"        return ''
"    endif
"endfunction

" }}}

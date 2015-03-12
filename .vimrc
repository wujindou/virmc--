set nu
set tabstop=4
set shiftwidth=4 "默认缩进
set background=light "背景色
set incsearch "增量式搜索 
set hlsearch "高亮搜索 
"在编辑过程中，在右下角显示光标位置的状态行
set ruler
"有时中文会显示乱码，用一下几条命令解决 
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
set encoding=prc 
syntax enable 
syntax on "语法高亮
colorscheme desert 
"文件侦测
filetype on
filetype plugin on
filetype indent on
set autochdir     
" 映射全选+复制 ctrl+a
map <C-A> ggVGY
map <F12> gg=G
vmap <C-c> "+y
"禁止生成临时文件
set nobackup
set noswapfile
" 不要使用vi的键盘模式，而是vim自己的
 set nocompatible
 " 在被分割的窗口间显示空白，便于阅读
 set fillchars=vert:\ ,stl:\ ,stlnc:\
"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
""
"去空行  
"自动切换工作目录，以当前打开的文件所在目录为准  



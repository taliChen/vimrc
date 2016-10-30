"set tabstop=4
"set softtabstop=4
"set autoindent
"set dictionary +=/usr/include


"show match for: (){}[]
"set showmatch

"set indent for C language
set cindent shiftwidth=4

"show lines number
set number

"tabstop
set ts=4

"light as your programing language says
syntax on

"highl light the result of search
set hlsearch

"underline、highlight the current line
set cursorline
"set cursorcolumn

"file encoding 
set fileencodings=ucs-bom,utf-8,GB18030,gbk



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/khaki.vim'
call vundle#end()            " required
filetype plugin indent on    " required

"---------------------------------YouCompleteMe--------------------------------------"

"let g:ycm_confirm_extra_conf=0
"let g:ycm_complete_in_comments=1
"set tags+=/data/misc/vim/stdcpp.tags
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"---------------------------------YouCompleteMe----------------------------------------------"

"-------------------------------DoxygenToolkit---------------------------------------"
let g:DoxygenToolkit_authorName="talichen"

"-------------------------------DoxygenToolkit----------------------------------------"
"----------------------------------配色--------------------------------"
"if !has("gui_running")
"	set t_Co = 256
"endif
"colorscheme khaki
if !has("gui_running")                                          
    set t_Co=256                                                
endif                                                                                         
colorscheme khaki
"----------------------------------配色--------------------------------"

"-------------------------------自动添加文件头-------------------------"
autocmd BufNewFile *.[ch],*.hpp,*.cpp,*.cc exec ":call Addreadme()"
function Addreadme()
	call setline(1, " ///")
	call append(1, " /// @file    " .expand("%:t"))
	call append(2, " /// @author   taliChen(banlichen2007@163.com)")
	call append(3, " /// @date    ".strftime("%Y-%m-%d %H:%M:%S"))
	call append(4, " ///")
	call append(5, " ")
	call append(6, "#include <iostream>")
	call append(7, " ")
	call append(8, "using namespace std")
endf
"-------------------------------自动添加文件头-------------------------"

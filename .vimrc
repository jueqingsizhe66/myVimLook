source ~/.vim/bundles.vim
let mapleader=','
"default mapleader is \ ,but I don't like it

"MyInfoMation
let g:BASH_AuthorName ='Ye Zhaoliang'
let g:BASH_Email      ='zhaoturkkey@163.com'
let g:BASH_Company    ='NCEPU'
let g:BASH_SyntaxCheckOptionsGlob  = "-O extglob"
let g:BASH_Debugger     = 'ddd'
"emmet vim
let g:user_emmet_leader_key='<leader>q'
let g:user_emmet_install_global =0
autocmd FileType html,css EmmetInstall
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
"let g:user_emmet_leader_key='<C-Z>,'
" encoding dectection
"Plugin 'mattn/emmet-vim'
"racket
au! BufRead,BufNewFile *.scrbl setfiletype scribble
set encoding=utf-8
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set foldmethod=manual
"set foldmethod=indent
"set foldmethod=marker
"gitgutter
let g:gitgutter_max_signs=1000
"vim-mark hightlight
let g:mwDefaultHighlightingPalette='extended'
let g:mwDefaultHighlightingNum=9
let g:mwDefaultHighlightPalette = [{'ctermbg':'Cyan','ctermfg':'Black','guibg':'#8CCBEA','guifg':'Black'}]
let g:mwAutoLoadMarks=1
let g:mwAutoSaveMarks=1
set viminfo+=%
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8 
" enable filetype dectection and ft specific plugin/indent
if has("autocmd")
    filetype plugin indent on
endif

if has('mouse')
    set mouse=a
endif

" enable syntax hightlight and completion
syntax on


"--------
" Vim UI
"--------
" color scheme
set background=dark
color vividchalk  "the default setting  But Ichange it by zhaolaing
"color distinguished
"color monakai
"color blackboard
"color solarized
"color fisa

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

set nobackup 
" editor settings
set history=1000
set nocompatible
"set nofoldenable                                                 "disable folding
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
" I try to modify withe wrap
set wrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber


"fortran setting by zhaoliang"
"fortran's setting for rules
 "去掉固定格式每行开头的红色填充
let fortran_have_tabs = 1
"fortran folder setting"
let fortran_fold =1
let fortran_more_precise=1
let fortran_do_enddo=1
"auto to open the neocomplet"
"let g:NeoComplCache_EnableAtStartup=1
""""""""""""""""""""""""""""""""""""""""""""""""''''"
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion, which require computational power and may stall the vim. 
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'

let g:pydiction_menu_height = 20

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif


" cscope setting
" 2014-5-4x xintianjia 

if has("cscope")
   set csprg="E:\Program Files (x86)\Vim\vim74\cscope"              "指定用来执行 cscope 的命令
   set csto=1                             "先搜索tags标签文件，再搜索cscope数据库
   set cst                                "使用|:cstag|(:cs find g)，而不是缺省的:tag
   set nocsverb                           "不显示添加数据库是否成功
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out                   "添加cscope数据库
   endif
   set csverb                             "显示添加成功与否
endif
"cscope"
   " in case your cscope execute is not in system path.
    " let g:cscope_cmd = 'D:/tools/vim/cscope.exe'
    " s: Find this C symbol
    map <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
    " g: Find this definition
    map <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
    " d: Find functions called by this function
    map <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
    " c: Find functions calling this function
    map <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
    " t: Find this text string
    map <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
    " e: Find this egrep pattern
    map <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
    " f: Find this file
    map <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
    " i: Find files #including this file
    map <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
    map <leader>l :call ToggleLocationList()<CR>

"quickfix"
nmap <F7> :cn<cr>
nmap <F8> :cp<cr>

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
"let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :
nnoremap <leader>a :Ack
vmap <C-c> "+y    
nmap <C-v> "+p    
"nmap <C-a> gg0vG$


nnoremap <leader>v V`]

nmap <F8> ggO!!-*-coding:utf8-*-<CR>!     @Date    : <Esc>:read !date<CR>kJ<CR>i!     @email   : zhaoturkkey@163.com<CR>!     @author  : Ye zhaoliang<CR>!     @usage   :<CR>!          <CR>!     @input   : <CR>!          <CR>!     @outcome : <CR>!         <CR>!     @purpose : <CR>!        

"map by zhaoliang~~
"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt 
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif
Bundle "https://github.com/vim-scripts/indentpython.vim--nianyang.git" 
let g:haddock_browser="/usr/bin/opera"
let g:haddock_docdir="/home/happycamp-of-lisp/doc"

"map <F11> :call AddFortranTitle()<cr>' s
"function AddFortranTitle()
"   call append(0,"!zhao*****************************************************!")
"   call append(1,"!                       DATA_READER                       !")
"   call append(2,"!            ---------------------------------            !")
"   call append(3,"!                     >>>>> SUBS <<<<<                    !")
"   call append(4,"!*********************************************************!")
"   echohl WarningMsg | echo "Successful in adding  the copyright."|echohl None
"endf
map <F8> o!zhao*****************************************************!<CR>!                       DATA_READER                       !<CR>!            ---------------------------------            !<CR>!                     >>>>> SUBS <<<<<                    !<CR>!*********************************************************!<CR><ESC>

"function AddFortranTitle()
"   i!zhao*****************************************************!<CR>
"   !                       DATA_READER                       !<CR>
"   !            ---------------------------------            !<CR>
"   !                     >>>>> SUBS <<<<<                    !<CR>
"   !*********************************************************!<CR>
"endf


"map <F9> :call AddFortranPart()<cr>' s
"function AddFortranPart()
"    call append(0,"!            ---------------------------------            !")
"    call append(1,"!                   PART1. FAST_WT MODEL                  !")
"    call append(2,"!            ---------------------------------            !")
"    call append(3,"!            ---------------------------------            !")
"    call append(4,"!                         LOAD DATA                       !")
"    call append(5,"!            ---------------------------------            !")
"    echohl WarningMsg | echo "Successful in adding  the copyright."|echohl None
"endf

map <F10> o!            ---------------------------------            !<CR>!                   PART1. FAST_WT MODEL                  !<CR>!            ---------------------------------            !<CR>!            ---------------------------------            !<CR>!                         LOAD DATA                       !<CR>!            ---------------------------------            !<CR><ESC>




" add and update the tile
map <F9> :call TitleDet()<cr>' s


function AddTitle()
    call append(0,"/*===================================================================")
    call append(1,"#")
    call append(2,"# Author : Ye Zhaoliang -- zhaoturkkey@163.com")
    call append(3,"#")
    call append(4,"# QQ : 977962857@qq.com ")
    call append(5,"#")
    call append(6,"# Last modified:	".strftime("%Y-%m-%d %H:%M"))
    call append(7,"#")
    call append(8,"# Filename:    ".expand("%:t"))
    call append(9,"#")
    call append(10,"# Description: ")
    call append(11,"#")
    call append(12,"===================================================================*/")
    echohl WarningMsg | echo "Successful in adding  the copyright."|echohl None
endf

" update the newest modified time and filename
"" the same  to normal '' to signal the position by vim(gvim)
function UpdateTitle()
    normal m'   
    execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updateing the copyright." | echohl None
endfunction

" determine whether there are "Last modified" words before the first 10 lines
" or not/
" If not ,it means there are no author information
" If yes, update it

function TitleDet()
    let n=1
    " default add
    while n < 10
        let line=getline(n)
        if line=~'^\#\s*\S*Last\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n+1
    endwhile
    call AddTitle()
endfunction

"""""""""""""""""""""""""""""""""
"           其他设置            "
"""""""""""""""""""""""""""""""""
" 保存代码文件前自动修改最后修改时间
au BufWritePre *.sh
  \ call TimeStamp('#')
au BufWritePre .vimrc,*.vim
  \ call TimeStamp('"')
au BufWritePre *.c,*.h
  \ call TimeStamp('*')
au BufWritePre *.cpp,*.hpp
  \ call TimeStamp('//')
au BufWritePre *.f90
  \ call TimeStamp('!')
au BufWritePre *.m
  \ call TimeStamp('%{','%}')
au BufWritePre *.prolog,*.pro
  \ call TimeStamp('//')
au BufWritePre *.cxx,*.hxx
  \ call TimeStamp('//')
au BufWritePre *.java
  \ call TimeStamp('//')
au BufWritePre *.rb
  \ call TimeStamp('#')
au BufWritePre *.py
  \ call TimeStamp('#')
au BufWritePre Makefile
  \ call TimeStamp('#')
au BufWritePre *.php
  \ call TimeStamp('<?php //', '?>')
au BufWritePre *.html,*htm
  \ call TimeStamp('<!--', '-->')

" Last change用到的函数，返回时间，能够自动调整位置
function! TimeStamp(...)
  let sbegin = ''
  let send = ''
  if a:0 >= 1
  let sbegin = a:1.'\s*'
  if a:1 == '*'
    let sbegin = '\' . sbegin
  endif
  endif
  if a:0 >= 2
  let send = ' '.a:2
  endif
  let pattern = 'Last Change:.*'
    \. send
  let pattern = '^\s*' . sbegin . pattern . '\s*$'
  let now = strftime('%Y年%m月%d日 %H时%M分%S秒',
    \localtime())
  let row = search(pattern, 'n')
  if row != 0
  let curstr = getline(row)
  let col = match( curstr , 'Last')
  let leftcol = match(curstr,sbegin)
  let spacestr = repeat(' ',col - len(a:1)-leftcol)
  let leftspacestr = repeat(' ',leftcol)
  let now = leftspacestr . a:1 . spacestr . 'Last Change: '
    \. now . send
  call setline(row, now)
  endif
endfunction

""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.m,*.f90,*.prolog,*.pl,*.py exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
function SetTitle() 
  "如果文件类型为.sh文件 
  if &filetype == 'sh' 
"    call setline(1,"\#########################################################################") 
"    call append(line("."),   "\#    File Name: ".expand("%")) 
""    call append(line(".")+1, "\#       Author: Ye Zhaoliang(yzl)") 
""    call append(line(".")+2, "\#        Email: yzhaoliang@outlook.com") 
""    call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
""    call append(line(".")+4, "\#    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
""    call append(line(".")+5, "\#########################################################################") 
""    call append(line(".")+6, "\#!/bin/bash") 
""    call append(line(".")+7, "") 
  elseif &filetype == 'perl' 
"    call setline(1,"\#########################################################################") 
"    call append(line("."),   "\#    File Name: ".expand("%")) 
""    call append(line(".")+1, "\#       Author: Ye Zhaoliang(yzl)") 
""    call append(line(".")+2, "\#        Email: yzhaoliang@outlook.com") 
""    call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
""    call append(line(".")+4, "\#    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
""    call append(line(".")+5, "\#########################################################################") 
""    call append(line(".")+6, "\#!/usr/bin/perl -w") 
""    call append(line(".")+7, "") 

elseif &filetype == 'fortran'
    call setline(1, "!*************************************************************************") 
    call append(line("."),   "!    >    File Name: ".expand("%")) 
    call append(line(".")+1, "!    >       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "!    >        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "!    > Created Time: ".strftime("%c")) 
    call append(line(".")+4, "!    >    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, "! ************************************************************************/") 
    call append(line(".")+6, "!")

elseif &filetype == 'matlab'
    call setline(1, "%*************************************************************************") 
    call append(line("."),   "%    >    File Name: ".expand("%")) 
    call append(line(".")+1, "%    >       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "%    >        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "%    > Created Time: ".strftime("%c")) 
    call append(line(".")+4, "%    >    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, "% ************************************************************************/") 
    call append(line(".")+6, "%")


   else 
    call setline(1, "/*************************************************************************") 
    call append(line("."),   "    >    File Name: ".expand("%")) 
    call append(line(".")+1, "    >       Author: Ye Zhaoliang(yzl)") 
    call append(line(".")+2, "    >        Email: yzhaoliang@outlook.com") 
    call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
    call append(line(".")+4, "    >    CopyRight: ".strftime("%c")." (c) YeZhaoliang") 
    call append(line(".")+5, " ************************************************************************/") 
    call append(line(".")+6, "")
  endif
  if &filetype == 'cpp'
    call append(line(".")+7, "#include<iostream>")
    call append(line(".")+8, "using namespace std;")
    call append(line(".")+9, "")
  endif
  if &filetype == 'c'
    call append(line(".")+7, "#include<stdio.h>")
    call append(line(".")+8, "")
  endif
  "新建文件后，自动定位到文件末尾
  autocmd BufNewFile * normal G
endfunction


""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>


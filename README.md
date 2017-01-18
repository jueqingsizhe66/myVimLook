## some useful functions 

+ [lookupfile][1] : file search(F2)

In the .vimrc config, you can see the lookupfile config right below
```

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

```

it requires you to create the filenametags in the current project directory,
so you can use the code below in the shell bash or cygwin(windows),which will create the filenametags in your current directory .

```
#!/bin/sh# generate tag file for lookupfile pluginecho -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > filenametagsfind . -not -regex '.*\.\(png\|gif\)' -type f -printf "%f\t%p\t1\n" | \    sort -f >> filenametags 

```

+ nerdtree: file directory(F6) 

+ syntax highlight ,with beautiful theme(vividchalk).

+ [perl support][4] and [bash support][5]

+ Code completion for java  python lisp scheme and so on 




## windows install

1. download [git][2] and install

2. download python2.7 and install(use 360 safeguard)

3. download [gvim][3]

4. unrar .vim.rar and copy the .vim folder into ~ folder

5. copy the .vimrc to the vim install place, such as `D:\Program Files (x86)\Vim`

6. maybe you need to check the cscope.exe and [ctags.exe][6] (you can use the cygwin instead.)
  Now I have put the cscope.exe and ctags.exe in the .vim folder, and don't move the cscope.exe.
  You can move the ctags.exe in the gVim.exe folder or you can put it in the cygwin folder(Note cygwin/bin is in your path, also
  you can use cygwin to install cscope.exe).
  (Usage of ctags: ctags -R .) 
  To deep in the understanding of the cscope, chech the [cscope's usage][7].


## ubuntu install

1. apt-get install git 
   and then config
```
git config --global user.name "Ye Zhaoliang"
git config --global user.email "zhaoturkkey@163.com"
ssh-keygen -t rsa -C "zhaoturkkey@163.com" 

# then copy the content of ~/.ssh/id_rsa.pub into github's ssh key setting
ssh -T git@github.com  # test your push operation with git
```

2. install python2.7(apt-get install python, then check python -v)

3. apt-get install vim vim-gtk vim-nox-py2

4. unrar .vim.rar and copy the .vim folder into ~ folder

5. copy the .vimrc to the vim install place, such as ~/

6. maybe you need to check the cscop and ctags (you can use the cygwin instead.)

```
apt-get install ctags
apt-get install cscope
```


[1]:http://easwy.com/blog/archives/advanced-vim-skills-lookupfile-plugin/ 
[2]:https://git-scm.com/ 
[3]:http://www.vim.org/download.php 
[4]:https://github.com/vim-scripts/perl-support.vim 
[5]:https://github.com/vim-scripts/bash-support.vim 
[6]:https://sourceforge.net/projects/ctags/?source=directory 
[7]:http://blog.csdn.net/dengxiayehu/article/details/6330200 

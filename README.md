[lookupfile][1] : file search(F2)

nerdtree: file directory(F6)

syntax highlight 

perl support and bash support

java  python lisp scheme and so one


## windows install

1. download [git][2] and install

2. download python2.7 and install(use 360 safeguard)

3. download [gvim][3]

4. unrar .vim.rar and copy the .vim folder into ~ folder

5. copy the .vimrc to the vim install place, such as `D:\Program Files (x86)\Vim`

6. maybe you need to check the cscope.exe and ctags.exe (you can use the cygwin instead.)


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

6. maybe you need to check the cscope.exe and ctags.exe (you can use the cygwin instead.)


[1]:http://easwy.com/blog/archives/advanced-vim-skills-lookupfile-plugin/ 
[2]:https://git-scm.com/ 
[3]:http://www.vim.org/download.php 

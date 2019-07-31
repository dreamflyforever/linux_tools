## zsh

## terminator
shift+ctrl+o: 横向分屏幕  
shift+ctrl+e: 竖向分屏幕  
ctrl + tab: 屏幕切换  
ctrl+shift + t: 添加主屏幕  
ctrl + pgup/pgdn: 主屏幕切换  
ctrl + d: 关主屏幕 

## markdown

## 终端常用命令
`ag` 搜索关键字  
`ctrl r` 智能搜索之前使用过的命令  

## gvim
### update_db.sh
###组合按键
`ctrl o` 往前跳  
`ctrl i` 往后跳  
`sp` 横向分屏幕  
`vsp` 纵向分屏幕 
`hjkl` 光标左右移动  
`ctrl v` 可以部分选择  
`u` 恢复 
`ctrl z` 取消恢复  
### ~/.vimrc  
```bash
colorscheme evening  
imap jj <esc> #从编辑模式进入命令模式  
#set hlsearch  
set incsearch  
set autoindent  
```

## update_db.sh
1. ./update_db.sh
2. cs add cscope.out
3. `ctrl ]` 进入函数里面
4. `cs f e your_word` 查找要寻找的单词

```bash
#!/bin/sh  
find ./  -name "*.c" -o -name "*.h" -o -name "*.cpp" -o -name "*.py" -o -name "*.s" > cscope.files  
cscope -Rbq -i cscope.files  
ctags -R --exclude=.git
```

## memory check
`valgrind --leak-check=full your-program` 检查代码内存泄露

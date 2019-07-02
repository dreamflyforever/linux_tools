## gvim 
### combinationkey 
`ctrl o` go front  
`ctrl i` go back  
enter command `sp .` split screen  
enter command `vsp .` virtical split screen  
press `ctrl v` and `hjkl` to select region  
`u` cancel  
`ctrl z` opposite cancel  
`~/.vimrc`: 
```bash 
colorscheme evening   
imap jj <esc>  #enter jj will switch edit mode to command mode  
set hlsearch  
set incsearch 
set autoindent 
```

## update_db.sh
Execute the script `update_db.sh`, then will product some files, and open the gvim, enter the command`cs add cscope.out`,
you can use the shortcut key to search the code and go where you want.
combination key `ctrl ]` : goto where that the cursor to the function or variety
when you want to know where to call the function or variety, end the command "cs f e keyword_you_want"

## terminal 
### ag: search the key world 
`ctrl r` search the command when you use in the history 

## terminator 
split screen for terminal 
`ctrl shit o`, `ctrl shit e` to split screen 

#memory check
`valgrind --leak-check=full`  


#copyright   
MIT by Jim

au! BufRead,BufNewFile *.haml         setfiletype haml
au! BufRead,BufNewFile *.sass         setfiletype sass
"au BufAdd,BufNewFile *                nested tab sball


" markdown filetype file
if exists("did\_load\_filetypes")
 finish
endif
augroup markdown
 au! BufRead,BufNewFile *.mkd   setfiletype mkd
 au! BufRead,BufNewFile *.markdown   setfiletype mkd
augroup END

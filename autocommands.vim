" Autocommands are a way to tell Vim to run a command whenever events happen.
autocmd BufNewFile * :write
" This let us target our autocommands at specific files
autocmd BufWritePre *.html :normal gg=G
" You can create a single autocommand bound to multiple events by separeting
" the events with a comma as
autocmd BufWritePre,BufRead *.html :normal gg=G


" FileType Events
"
" This event is fired whenever Vim sets a buffer's filetype

autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python nnoremap <buffer> <localleader>c I#<esc> 


" Autocommands & Abbreviations
"
autocmd FileType python :iabbrev <buffer> iff if:<left>
autocmd FileType javascript :iabbrev <buffer> iff if()<left>

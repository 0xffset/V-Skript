
"Vim makes it easy to map more that just single keys
"Run these commands in NORMAL mode:

nnoremap -d dd /* Create a custom mapping to delete a line*/  
nnoremap -c ddO /* clears a line and puts you into INSERT mode*/

" We can declare leaders with the 'let' keyword as

let leader = "-"

" When we're creating new mappings, we can use leaders to mean like
nnoremap <leader>d dd




 

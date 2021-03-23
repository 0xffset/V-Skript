"Put your cursor on a word in your text and press the space bar. Vim 
"will visual select the word. 
"Also is possible modifie keys like Ctrl and Alt with this:

map <c-d> dd

"Now if you press Ctrl+, will run 'dd' command.

"Switch to INSERT mode pressing space key, type:
map <space> viw 

"Now you can see the when space key is pressed, switch to the INSERT view.


"We also can use map command which made the keys work in NORMAL made.
" You can be more specific about when you want mapping to apply by using
" nmap, vmap and imap. 
"These commands tells to Vim that use the mapping in NORMAL, VISUAL, or INSERT
"mode respectively.
"
"Try to run this command:

map \ dd

" Now put the cursor in your text file, make sure you are in NORMAL moode, yo
" can see if press the '\' key, Vim will delete the selected line.

" Now shitch to VISUAL mode and press again '\'. Nothing wll happen, because
" We told Vim to only use in NORMAL mode. 
"
" Now try to deduce the following commands:

nmap \ dd
vmap \ dd


" Now that we've covered how to map keys in NORMAL and VISUAL mode, let's move
" on to INSERT mode.
" Run this command:

imap <c-d> dd

" You might think that this would let you press Ctrl+d in the INSERT MODE to
" delete the current line. You can see that it won't work because the problem
" is that Vim is doing exactly what we told it to: "when I press <c-d> I want
" you to do what presssing d and d would normally do". Vim normally used the
" INSERT mode to do that.
"
" To solve that, we need change the command a bit more explicit:

imap <c-d> <esc>dd

" The <esc> tells to Vim press the Escape key, which will take ys out of
" INSERT mode. Now try to mapping, it works!, but notice how you are now back
" in NORMAL mode. 


"In another hands, when you map keys with these commands Vim will take other
"mapping into account. Run the following commands:

numap - 
numap \

"Recursion mapping
nmap dd O<esc> jddk

"Nonrecursive Mapping
nmap x dd 
nnoremap \ x

"Vim ignore the x mapping, Insteared of deleting the current line, it deletes the current character


"Buffer-Local Options and Mappings
" We used <leader>x to do a buffer-local mappings. Mappings that only applies
" to specific buffers you should use <localleader> instead of <leader>

nnoremap 	   <leader>d dd
nnoremap <buffer>  <leader>x dd

" Shadowing
nnoremap <buffer> Q x
nnoremap 	  Q dd

" If you press Q, Vim will run the first mapping, not the second, because the
" first mapping is more specific.

" Movement Mappings

onoremap p i(
" onoremap command tells Vim that when it's waiting for a movement to give to
" an operator and it sees p. 
"

" To changing the start, you need write as
onoremap in( :<c-u>normal! f(vi(<cr>

nnoremap <leader>g :grep -R text .<cr>

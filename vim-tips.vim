"" Some tips 

"" To open a splitted windows to edit the vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>

"" Somethimes, When you edit and save files, Vim creates a file the same as
"the original adding '.un~'  at the end, this is call 'undofile', to prevent
"that set 'noundofile' in your vimrc as

set noundofile

" To surroung works in with double quotes using Vim mappings just type:
nnoremap <leader>" view<esc>a"<esc>hbi"<esc>lel

" To exit INSERT mode in VIm by default:
<esc>
<c-c>
<c-[>



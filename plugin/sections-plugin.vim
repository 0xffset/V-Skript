function! s:NextSection(type, backwards)

  if a:type == 1
	  let pattern = '\v\(\n\n^\S|%)'
	  let flags = 'e'
  elseif a:type == 2
	  let pattern = 'two'
	  let flags = ''
  endif
  if a:backwards
	  let dir = '?'
  else
	  let dir = '/'
  endif

  execute 'silent normal! ' . dir . pattern . dir . flags .  "\r"
endfunction

noremap <script> <buffer> <silent> [[ 
	\ :call <SID>NextSection(1,1)<cr>
noremap <script> <buffer> <silent> ]] 
	\ :call <SID>NextSection(1,0)<cr>
noremap <script> <buffer> <silent> []
	\ :call <SID>NextSection(2,1)<cr>
noremap <script> <buffer> <silent> ][
	\ :call <SID>NextSection(2,0)<cr>


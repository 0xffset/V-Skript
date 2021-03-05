
" When you do an space after typing the 'adn', Vim will replace it with 'and' 
"
iabbrev adn and

" Also Vim will substitute and abbreviation when you type any 'non-keyword
" character' after an abbreviation. 

set iskeyword?

" Abbrevations are more that just correcting typos. 

iabbrev @@ email@gmail.com
iabbrev ccopy Copyright 2013 Email, all rights reserved


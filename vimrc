"from https://gist.github.com/romainl/9970697
"There are some system setup notes below. 
set nocompatible "doens't try and do what VI does 
execute pathogen#infect() 
"All (the rest)setup initially from http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype on
filetype plugin on
syntax on
set lines=35 columns=90 "check these for full screen 
set number
set hidden
set history=500
set hlsearch "highlight search 
set showmatch "When a bracket is inserted, breifly jump to the matching one. 
set ignorecase smartcase  "setting up search 
set spell "Add spell checking 
hi clear SpellBad "clear the highlighing for badly spelled words 
hi SpellBad cterm=underline "set the highlighintg for badly spelt words 
let g:CommandTMaxFiles=300000

"My subsitutions 
inoremap jk <esc>
inoremap <esc> <nop>
iabbrev lnn <C-R>=strftime('## %d/%m/%y %H:%M')<C-M>
iabbrev SAS <C-R>=strftime('- %d/%m/%y smallest next step: ')<C-M>

"to enable fuzzy search from https://www.youtube.com/watch?v=XA2WjJbmmoM&list=PL8tzorAO7s0jy7DQ3Q0FwF3BnXGQnDirs
set path+=**

"From the paste and copy image vim plugin
autocmd FileType markdown nmap <silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
" let g:mdip_imgdir = 'img'
" let g:mdip_imgname = 'image'


"Macros recorded 
let @q = 'A date:date	jk0j'

"Notes for system setup: 
"defaults write com.apple.screencapture location /Users/joereddingtonfileless/Downloads/ is how you change the screenshot directory.
"
"

" from [200~https://vi.stackexchange.com/a/14297/8792[201~
if expand('%:t') == 'todo.txt'
  set nowrap
endif

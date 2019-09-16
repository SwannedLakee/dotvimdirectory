"from https://gist.github.com/romainl/9970697
set nocompatible
execute pathogen#infect()
"All (the rest)setup initially from http://marcgg.com/blog/2016/03/01/vimrc-example/
filetype on
filetype plugin on
syntax on
set lines=35 columns=90
set number
set hidden
set history=100
set hlsearch
set showmatch
set ignorecase smartcase 
set spell
hi clear SpellBad                                                                         
hi SpellBad cterm=underline
let g:CommandTMaxFiles=300000
inoremap jk <esc>
inoremap <esc> <nop>
set t_BE=
"set t_BE= is there to stop the "[200" issue
iabbrev lnn <C-R>=strftime('## %d/%m/%y %H:%M')<C-M>
iabbrev SAS <C-R>=strftime('- %d/%m/%y smallest next step: ')<C-M>

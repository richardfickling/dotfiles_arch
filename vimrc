set nocompatible
set backup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set ttimeoutlen=100

syntax on
colorscheme desert
set expandtab
set tabstop=4
set shiftwidth=4
"if has('mouse')
"    set mouse=a
"endif
filetype plugin indent on
map <S-Enter> O<Esc>
map <CR> o<Esc>
map! <F7> <ESC> :wq <Enter>
map <F7> :wq <Enter>
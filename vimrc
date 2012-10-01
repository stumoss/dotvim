filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
set nocompatible

syntax on
colors desert

set number
set nocompatible
set foldenable
set foldmarker={,}
set foldmethod=marker
set foldlevel=99
set softtabstop=4
set shiftwidth=4
set expandtab
set ruler
set smarttab autoindent
set nobackup
set showmatch
set showmode
set background=dark

set relativenumber
set ignorecase
set smartcase

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
highlight ColorColumn ctermbg=DarkGray guibg=DarkGray


" Unmap F1 key from help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" When focus is lost save
au FocusLost * :wa

" Remove whitespace with \w keypress
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Highlight Extra Whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" End Whitespace Highlight

map <C-> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

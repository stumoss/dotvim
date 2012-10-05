filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
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
set backspace=2
set backspace=indent,eol,start
set nowrap
set textwidth=0
set wrapmargin=0
set formatoptions=qrn1
set colorcolumn=80
set autowriteall
set laststatus=2
set visualbell
set noerrorbells

highlight ColorColumn ctermbg=DarkGray guibg=DarkGray

" Unmap F1 key from help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" When focus is lost save
au FocusLost * :wa
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

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
map <F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR><CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 0
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

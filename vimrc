call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

if has("autocmd")
  filetype plugin indent on
endif

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
set textwidth=80
set nowrap
set ruler
set smarttab autoindent
set nobackup
set showmatch
set showmode
set background=dark
"set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
"set cino=1fs{1s=1s:1s(1s
"set cindent

map <C-> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

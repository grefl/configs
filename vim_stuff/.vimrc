let g:skip_defaults_vim = 1
set t_Co=256
syntax enable
set termguicolors
set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Normal ctermbg = NONE
highlight nonText ctermbg = NONE
colorscheme mytheme 




" Show highlighting groups for current word

nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
 endfunc

let g:skip_defaults_vim = 1
set t_Co=256
syntax enable
filetype plugin indent on
set termguicolors
set background=dark
set tabstop=2
set shiftwidth=2
set numberwidth=5
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Normal ctermbg = NONE
highlight nonText ctermbg = NONE
colorscheme mytheme 
let g:rustfmt_autosave = 1
" sets caret size for insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set ttimeout
set ttimeoutlen=1
set listchars=tab:>-,trail:~,extends:>,precedes:<,space:.
set ttyfast

" Show highlighting groups for current word

nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
 endfunc

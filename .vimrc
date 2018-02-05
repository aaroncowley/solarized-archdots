set nocompatible   	" Disable vi-compatibility
set t_Co=256        " Use 256 Colors in terminal
" Put your non-Plugin stuff after this line
set shell=/bin/zsh	" zsh is cooler than bash
" Color Settings
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized
set encoding=utf-8
execute pathogen#infect()

set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set noerrorbells                " don't beep
set relativenumber              " show line numbers relative to cursor position
set splitbelow                  " create split below when doing horizontal split
set splitright                  " create split on right when doing a vertical split
set incsearch
set nowrap
"set timeout timeoutlen=200 ttimeoutlen=100

" Group all swp files and backups into a dir
set backupdir=~/.vim/backups
set directory=~/.vim/backups


nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
map <C-t> <esc>:tabnew<space>

nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>pd :pwd<cr>
"nnoremap rp :RainbowParenthesesToggle<cr>
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"add semicolon in normal mode
nmap ;; A;<esc>

" Open splits
nnoremap vs :vsplit<cr>
nnoremap sp :split<cr>
" Resize vsplit;
nnoremap ;h :vertical resize +5<cr>
nnoremap ;l :vertical resize -5<cr>
nnoremap ;k :resize +5<cr>
nnoremap ;j :resize -5<cr>
nnoremap <leader>1 <c-w>=
nnoremap <leader>2 <C-h>:vertical resize 120<cr>

:inoremap <C-v> <ESC>"+pa
:vnoremap <C-c> "+y
:vnoremap <C-d> "+d


"typos
command! Q q " Bind :Q to :q
command! Qa qa
command! Wq wq

set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif



"vim-airline"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <C-l> <Space><Space>




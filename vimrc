" https://github.com/tpope/vim-sensible
" Load sensible.vim first
runtime! plugin/sensible.vim

execute pathogen#infect()

set omnifunc=syntaxcomplete#Complete
set number

set shiftwidth=4
set tabstop=2
set expandtab

if has("gui_macvim")
    colorscheme wombat
endif

let mapleader=","

nnoremap <Leader>n :NERDTreeToggle<enter>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <Leader>h :split<enter>
nnoremap <Leader>v :vsplit<enter>

imap <C-space> <Esc>

" Remove scrollbars
if has("gui_running")
    set guioptions+=LlRrb
    set guioptions-=LlRrb
endif

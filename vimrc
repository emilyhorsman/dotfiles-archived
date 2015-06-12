call plug#begin('~/.vim/plugged')
Plug 'https://github.com/michalbachowski/vim-wombat256mod.git'
Plug 'https://github.com/othree/html5.vim'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
Plug 'https://github.com/digitaltoad/vim-jade.git'
Plug 'https://github.com/editorconfig/editorconfig-vim.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-sensible'
Plug 'https://github.com/bling/vim-airline.git'
Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/kchmck/vim-coffee-script.git'
call plug#end()

" https://github.com/tpope/vim-sensible
" Load sensible.vim first
runtime! plugin/sensible.vim

" OS X: /etc/launchd.conf
" setenv DEV_HOME_DIRECTORY /path/to/dir/
" launchctl setenv DEV_HOME_DIRECTORY /path/to/dir/
if !empty($DEV_HOME_DIRECTORY)
    cd $DEV_HOME_DIRECTORY
endif

set omnifunc=syntaxcomplete#Complete
set number

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

colorscheme wombat256mod

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

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Remove scrollbars
if has("gui_running")
    set guioptions+=LlRrb
    set guioptions-=LlRrb
endif

autocmd BufRead,BufNewFile *.mustache set filetype=html

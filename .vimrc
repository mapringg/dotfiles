"Plugin
call plug#begin('~/.vim/plugged')
Plug 'godlygeek/tabular' " Alignment
Plug 'majutsushi/tagbar' " Displays tags in a window
Plug 'edkolev/tmuxline.vim' " Simple tmux statusline
Plug 'tpope/vim-obsession' " Continuously update session files
Plug 'w0rp/ale' " Linting
Plug 'dracula/vim' " Dracula theme
Plug 'honza/vim-snippets' " Snippet
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe' " Autocomplete
Plug 'airblade/vim-gitgutter' " Git diff in the gutter
Plug 'vim-airline/vim-airline' " Vim statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'haya14busa/incsearch.vim' " Improved incremental searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree' " Tree explorer
Plug 'christoomey/vim-tmux-navigator' " Navigate tmux panes and splits
Plug 'sheerun/vim-polyglot' " Language pack
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary' " Comment out code with gcc
Plug 'tpope/vim-surround' " Change surroundings
Plug 'tpope/vim-repeat' " Repeat plugins map
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'lervag/vimtex' " Latex
call plug#end()
"General
set guifont=Fira\ Code:h14
set encoding=utf-8
set incsearch
set hlsearch
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set wildmenu
set hidden " Allow opening new file when the current buffer is unsaved
set ttimeoutlen=50 " Eliminate delay on ESC
set laststatus=2
set nrformats=
let mapleader="\<space>"
nnoremap <leader>sv :source %<cr>
nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
au FileType tex :NoMatchParen
map <F5> :!gcc -Wall -W -pedantic -o output % && ./output <CR>
"Colorscheme
set termguicolors
colorscheme dracula
"Fzf.vim
nnoremap <leader>f :Files<cr>
nnoremap <leader>a :Ag<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>s :Snippets<cr>
nnoremap <leader>l :Lines<cr>
nnoremap <leader>c :Commits<cr>
imap <c-x><c-l> <plug>(fzf-complete-line)
let $FZF_DEFAULT_COMMAND= 'ag -g ""'
"Nerdtree
nnoremap <leader>m :NERDTree<cr>
"Emmet
let g:user_emmet_install_global=0
autocmd FileType html,css EmmetInstall
"Ultisnips
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'
"Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch=1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
"Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=0
let g:airline_theme='dracula'
"Easy motion
let g:EasyMotion_do_mapping=0
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase=1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"Vimtex
let g:tex_flavor='latex'
"Tmuxline
let g:tmuxline_powerline_separators=0
"YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
"Tagbar
nnoremap <leader>t :TagbarToggle<cr>

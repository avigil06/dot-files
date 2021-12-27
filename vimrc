set nocompatible " be iMproved, required
filetype off " required
"set spelllang=en
"set spell
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Basic Plugins
Plugin 'ajh17/vimcompletesme'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-repeat'
Plugin 'Shougo/neocomplete.vim'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'roxma/nvim-yarp'
Plugin 'shougo/deoplete.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
"Plugin 'dart-lang/dart-vim-plugin'
Plugin 'joshdick/onedark.vim'
Plugin 'ap/vim-css-color'
Plugin 'reasonml-editor/vim-reason-plus'
Plugin 'elmcast/elm-vim'
call vundle#end() " required
"remap the switching between split windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h
"NERD Tree commands
"open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"close vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"vim-airline setup solarized dark theme
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
"common setup
syntax enable
set relativenumber
" easy motion
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"Deoplete
let g:deoplete#enable_at_startup = 1
"Neocomplete
"let g:neocomplete#enable_at_startup = 1
" Only required for mac users to preven the terminal flash issue
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" Set tabs to spaces=2
set tabstop=2 shiftwidth=2 expandtab
" Change swap dirs
set backupdir=~/.vim_dirs/backup
set directory=~/.vim_dirs/swp
" show fileoptions above command line
set wildmenu
" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*
"let g:ale_sign_column_always = 1
set encoding=utf-8
set pyxversion=3

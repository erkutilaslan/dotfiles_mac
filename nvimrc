" general settings
syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set nobackup
set undofile
set colorcolumn=80
"
"enable global clipboard
set clipboard+=unnamedplus

" Required by Vundle
set nocompatible " be improved, required
filetype off  "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"coc.nvim for auto completion
Plugin 'neoclide/coc.nvim'

"airline statusbar for nvim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Gruvbox theme
Plugin 'morhetz/gruvbox'

" NERDTree plugin
Plugin 'preservim/nerdtree'

" Briefly highlight which text was yanked
Plugin 'machakann/vim-highlightedyank'

"fzf plugin
Plugin 'junegunn/fzf' , { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'airblade/vim-rooter'

"R support for vim
Plugin 'jalvesaq/Nvim-R' , {'branch': 'stable'}

" Auto pairing for brackets and quotes
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Set relative line numbers
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

"Unbind some useless/annoying default key bindings.
nmap Q <Nop> 
map Q <Nop>

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

"keybindings
"easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"arrows keys to resize splits
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

"disable Q, shift+k, shift+j
nnoremap Q <nop>
nnoremap <S-K> <nop>
nnoremap <S-J> <nop>

"remap Ctrl C to ESC
inoremap <C-c> <ESC>

" This is to set background color to dark. This is usefull for using Ubuntu 
" built inside Windows. Normally the color scheme is from Windwos and this
" looks really bad.
set background=dark 

"set color scheme to 256 bits. this solves problem with vim not having
"the proper color scheme inside tmux.
set t_Co=256

" gruvbox configuration
let g:gruvbox_contrast_dark = 'hard'

" setting colorscheme as gruvbox
colorscheme gruvbox

" Changing the default mapping and the deault command to invoke CtrilP
" I dont really know wtf is this doing but it was in the excersices.
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 

" configuration to speed up <ESC> and key stroke combination operations
set ttimeout
set timeoutlen=1000
set ttimeoutlen=50

" highlight the current line
set cursorline

" disabling Nvim-R commands
let R_assign = 0 

" always open R as horizontal split with 15 lines
let R_rconsole_width = 0
let R_rconsole_height = 10

" remap <LocalLeader> to ,
let maplocalleader = ','

" use visidata to open data.frames and matrices in a new tmux window for
" nvim-R
let R_csv_app = 'tmux new-window vd'

" Opens NERDTree automatically when vim starts up if no files specified
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

 "Closes vim if the only window left open is NERDTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"NERDTree shows hidden files
let g:NERDTreeShowHidden=1

" use Ctrl N to open NERDTree
map <C-n> :NERDTreeToggle<CR> 

" keep cursor centered vertially on the screen
:set so=999


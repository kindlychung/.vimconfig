set nosmartcase
set hidden
set updatetime=1000
set autochdir
set scrolloff=5
set autoread
set autowriteall
set background=dark
set backspace=indent,eol,start
set backspace=indent,eol,start " Backspace for dummies
set cmdheight=1
set completeopt=longest,menu
set complete-=i
set encoding=UTF-8
set fo+=n                     " Format numbered lists
set fo-=c
set dict+=/usr/share/dict/words
" set foldmethod=marker
set guioptions-=l
set guioptions-=L              " turn off left scrollbar
set guioptions-=m              " turn off menu bar
set guioptions-=T              " turn off toolbar
set history=2000
set hlsearch                   " Highlight search terms
set incsearch                  " Find as you type search
set iskeyword+=_
set laststatus=2
set linespace=0                " No extra spaces between rows
set mouse-=a
set mousehide
set modeline
set noesckeys
set noic
set nostartofline
set nostartofline
set nobackup
set noswapfile
set nowritebackup
set nu                         " Line numbers on
set shortmess+=aoOtT           " Abbrev. of messages (avoids 'hit enter')
set noshowmatch                  " Show matching brackets/parenthesis
set showmode
set synmaxcol=100
set tags=./tags;~
set timeoutlen=600
set undodir=/home/kaiyin/Dropbox/.vimundo
set wildmenu
set wildmode=longest,list,full


set nowrap                      " Wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set expandtab

let g:neocomplete#enable_at_startup = 1
let g:solarized_termcolors=256
let g:clang_complete_loaded='/usr/lib/llvm-3.2/lib/'
let g:clang_complete_copen = 1
let g:clang_complete_library = 1
let g:clang_complete_pattern = 1
let g:clang_complete_macro = 1
let g:VimuxOrientation = "h"
let g:VimuxHeight = "50"


python << eof
import platform
import vim
osname = platform.system()
if osname == "Linux":
    vim.command('set clipboard=unnamedplus')
eof

if &term =~ "xterm" || &term =~ "256" || $DISPLAY != ""
   set t_Co=256
endif

if has('persistent_undo')
    set undofile                " So is persistent undo ...
    set undolevels=1000         " Maximum number of changes that can be undone
    set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
endif

if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and
                                " Selected characters/lines in visual mode
endif

if has('statusline')
    set laststatus=2
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info

    let g:airline_theme='powerlineish'       " airline users use the powerline theme
    let g:airline_powerline_fonts=1          " and the powerline fonts
endif



let g:loaded_matchparen= 1
let vimrplugin_assign = 0
" let vimrplugin_screenplugin = 0
let g:tex_conceal = ""

scriptencoding utf-8
syntax enable
filetype indent on " per-filetype config
filetype plugin on " per-filetype config

" konsole CursorShape change with mode
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Youcompleteme python autocomplete disable
" let g:pymode_rope_complete_on_dot = 0
"

" D autocomplete settings (vim-dutyl plugin)
let g:dutyl_stdImportPaths=['/usr/share/dmd/src/']
call dutyl#register#tool('dcd-client','/usr/local/bin/dcd-client')
call dutyl#register#tool('dcd-server','/usr/local/bin/dcd-server')


colorscheme solarized

" ~$ apt-get install git curl
" ~$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
" ~$ vim +PluginInstall +qall

"***************************************Vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/L9'
Plugin 'othree/vim-autocomplpop'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/Pydiction'
Plugin 'klen/python-mode'
Plugin 'othree/xml.vim'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
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
" Put your non-Plugin stuff after this line
"

"***************************************vim config
syntax on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set cindent
set autoindent
set enc=utf8

set mouse=nv
"Use mouse when in Visual,Normal mode
set cursorline
"Set Underline

colorscheme darkblue
"Color, Now is default

filetype plugin on

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS"


"********************************NerdTree
map <F2> :NERDTreeToggle<CR>
map <Leader>n :NERDTreeToggle<CR>

"********************************syntastic
let g:syntastic_check_on_open = 1 

"********************************Pydiction
let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict' 
let g:pydiction_menu_height = 3
"********************************notes
let g:notes_directories = [ '~/MyTools/notes']
    

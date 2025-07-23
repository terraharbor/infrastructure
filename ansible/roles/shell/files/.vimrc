" .vimrc file for the Atomic Particles hosts

" For more explanations, please review proper documentation or
" cheatsheets on Atomic Particles's repositories.


" MAIN CONFIGURATION ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Turn syntax highlighting on.
syntax on

" Set a colorscheme and download it if not available 
if empty(glob('~/.vim/colors/molokai.vim'))
  silent !curl -fLo ~/.vim/colors/molokai.vim --create-dirs 'https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim'
endif
colorscheme molokai

" Add numbers to each line on the left-hand side.
set number

" Do not save backup files. This avoids polluting your folders with backups.
" There is no real need for you since you only use Vim occasionally.
set nobackup

" Manage tabs and white spaces
" https://www.reddit.com/r/vim/wiki/tabstop/
" Set shift width to 2 spaces.
set shiftwidth=2
" Set tab width to 2 columns.
set tabstop=2
set softtabstop=2
" Use space characters instead of tabs.
set expandtab

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Secure the editing of GoPass secrets.
" This is mainly to avoid the creation of temporary files.
autocmd BufNewFile,BufRead /dev/shm/gopass* setlocal noswapfile nobackup noundofile viminfo=""

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

" Check at every boot if Vim-Plug plugin manager is installed and if not install it.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall
endif

" List of Vim-Plug plugins to load.
call plug#begin()

call plug#end()

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

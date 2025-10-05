" ~/.vimrc - Vim configuration

" General settings
set nocompatible              " Use Vim defaults
syntax on                     " Enable syntax highlighting
filetype plugin indent on     " Enable file type detection

" Display settings
set number                    " Show line numbers
set showcmd                   " Show command in bottom bar
set cursorline                " Highlight current line
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching [{()}]

" Search settings
set incsearch                 " Search as characters are entered
set hlsearch                  " Highlight matches
set ignorecase                " Ignore case when searching
set smartcase                 " But case-sensitive when uppercase present

" Tab settings
set tabstop=4                 " Number of visual spaces per TAB
set softtabstop=4             " Number of spaces in tab when editing
set shiftwidth=4              " Number of spaces for autoindent
set expandtab                 " Tabs are spaces

" Indentation
set autoindent                " Copy indent from current line when starting new line
set smartindent               " Smart autoindenting

" Other settings
set backspace=indent,eol,start " Make backspace work as expected
set encoding=utf-8            " Default encoding
set history=1000              " Command history
set ruler                     " Show cursor position
set laststatus=2              " Always show status line

" Performance
set lazyredraw                " Redraw only when needed

" Color scheme
colorscheme desert

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

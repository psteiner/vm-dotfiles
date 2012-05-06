set nocompatible    " use vim defaults, must? be first


" disabled for Vundle compatibility
" to indent automatically depending on filetype
" filetype indent on


" ### TABS AND INDENTATION
set tabstop=2           " numbers of spaces of tab character
set expandtab           " expand tabs into spaces
set smarttab            " smart tabbing for autoindent
set autoindent          " copy indent level to next line
set smartindent         " smart autoindent on new line
set shiftwidth=2        " numbers of spaces to (auto)indent

" ### SEARCH
set hlsearch            " highlight searches
set incsearch           " search while typing
set ignorecase          " case insensitive search
set smartcase           " case insenstive when lowercase, case sensitive otherwise"

" ### UI STUFF
syntax on               " Turn on highlighting
set background=dark   " assume dark background 
set showcmd             " display incomplete commands
set ruler               " show the cursor position all the time
set title               " show title in console title bar
set lbr                 " wrap text
set ls=2                " always show status line
set nu                  " turn on line numbering
"set showmatch           " show matching brackets

set hidden              " allow unwritten buffer changes on :e
set history=1000        " remember more commands and history
set undolevels=1000     " lots of undo

" ### CUSTOM MAPPINGS
"let mapleader = ","

set pastetoggle=<F2>

" DelimitMate
imap <leader>p <Plug>delimitMateS-Tab
au FileType ruby let b:delimitMate_quotes = "\" ' ` |"

" .vimrc
map <leader>v :vsp ~/.vimrc<cr>
map <leader>e :e ~/.vimrc<cr>
map <leader>u :source ~/.vimrc<cr>

" Ctrl-N to disable search match highlight
" Note: Ctrl-N was same as 'k' (move to next line)
nmap <silent> <C-N> :silent noh<CR>


" set nobackup
" set noswapfile

" ### COLORSCHEME
" colorscheme railscasts
" colorscheme delek
colorscheme vibrantink

" ### PACKAGE BUNDLING
" using Vundle instead
" call pathogen#infect() " load pathogen

" Disable Vundle if Bundle* commands
" conflict with tpope/vim-bundler
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler' 
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
" disabled in favour of delimitMate
"Bundle 'jiangmiao/auto-pairs'
" remap auto-pairs jump key
"let g:AutoPairsShortcutJump = '<F4>'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
" snipmate S-TAB conflicts with delimitMate
"Bundle 'msanders/snipmate.vim'
Bundle 'TailMinusF'
Bundle 'mbadran/headlights'
Bundle 'ervandew/supertab'
" remap supertab command
"let g:SuperTabMappingForward = '<c-space>'
"let g:SuperTabMappingBackward = '<s-c-space>'
Bundle 'delimitMate.vim'
Bundle 'endwise.vim'

filetype plugin indent on

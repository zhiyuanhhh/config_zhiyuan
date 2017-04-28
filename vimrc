" Allow backspacing over, line breaks and start of insert action
set backspace=indent,eol,start

" Set to auto read when a file is changed from the outside
set autoread

set ruler		" Show current position at the right bottom corner
"set number		" Show line number at the beginning
"set cursorline		" Highlight the current line

"set foldenable		" Enable folding
"set foldmethod=indent "marker, manual, expr, syntax, diff. Run :help foldmethod to check others

" Remember position in file after reopen
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Setting tabs
set tabstop=4 softtabstop=4 noexpandtab shiftwidth=4

" These commands create language-specific settings for certain filetypes/file extensions. 
" Note that they are wrapped in an augroup as this ensures the autocmd's are only applied once
" The autocmd! directive clears all the autocmd's for the current group.
"augroup configgroup
"    autocmd!
"    autocmd FileType javascript setlocal tabstop=2	" tabstop is the number of white spaces a tab counts for
"    autocmd FileType python setlocal expandtab
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2	" Have no idea what this is doing
"    autocmd BufEnter *.sh setlocal softtabstop=2	" No idea on this line either
"augroup END

set wildmenu	"I have no idea what this is, but so many people have it.

"colorscheme molokai

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default /etc/vim/vimrc in Ubuntu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


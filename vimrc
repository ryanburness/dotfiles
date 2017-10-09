set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required

Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/jsdoc-syntax.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'raimondi/delimitmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-endwise'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
filetype plugin on
set shell=/bin/bash

set laststatus=2
set number
set expandtab
set shiftwidth=2    " Indent/Outdent by 2 spaces"
set tabstop=2       " Tab is 2 chars long"
set autoindent
set smartindent
set incsearch       " Show match when typing
set hlsearch        " Highlight all search matches
set scrolloff=5     " Scroll lines before edge of screen
set scrolljump=5    " Scroll lines before edge of screen
set splitright
set splitbelow
set smartcase
set colorcolumn=120
set clipboard=unnamed
set showmatch       " Show matching brackets
set nobackup
set noswapfile
set showcmd         " Display incomplete commands
set backspace=indent,eol,start

highlight ExtraWhitespace ctermbg=red guibg=#262D51
match ExtraWhitespace /\s\+$/

" Theme settings
set t_Co=256
set background=dark
colorscheme default 

" NERDTree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=40

" RuboCop
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

" Syntastic
 let g:syntastic_javascript_checkers = ['eslint']

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'

" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .'],
        \ },
    \ 'fallback': 'find %s -type f'
    \ }
let g:ctrlp_extensions = ['line']

" Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
hi IndentGuidesOdd ctermbg=236
hi IndentGuidesEven ctermbg=237

" NERD Commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Map leader to ,
map , \

" Misc mappings
nmap <leader>dd :call InsertDebugger()<CR>
" ,. and ,/ to go between buffers
nmap <leader>. :bp<enter>
nmap <leader>/ :bn<enter>
" Clear search buffer with return
noremap <CR> :nohlsearch<cr>

au BufNewFile,BufRead *.ui set filetype=ruby
au BufNewFile,BufRead *.scss set filetype=css

function! InsertDebugger()
  if(&filetype == 'ruby')
    :normal orequire 'pry'; binding.pry
  else
    :normal odebugger
  endif
  :normal ==
endfunction

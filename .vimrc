set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"  Plugin 'tpope/vim-fugitive'

" syntax
Plugin 'hail2u/vim-css3-syntax'
Plugin 'moll/vim-node'
Plugin 'elzr/vim-json'
Plugin 'ap/vim-css-color'
Plugin 'burnettk/vim-angular'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

"git
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" utis
Plugin 'mattn/emmet-vim'
Plugin 'gcmt/taboo.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Chiel92/vim-autoformat'
Plugin 'gko/vim-coloresque'
Plugin 'Shougo/deoplete.nvim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'chriskempson/base16-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'valloric/youcompleteme'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/neocomplete'
Plugin 'ryanoasis/vim-devicons'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'qpkorr/vim-renamer'
Plugin 'easymotion/vim-easymotion'

" VIM session
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc' "necesary for vim session

"
"Plugin 'junegunn/fzf.vim'
"Plugin 'junegunn/fzf.vim', { 'dir': '~/.fzf'}, { 'dir': '~/.fzf'}

"plugin from http://vim-scripts.org/vim/scripts.html
"  Plugin 'L9'
" Git plugin not hosted on GitHub
"  Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"  Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"  Plugin 'ascenator/L9', {'name': 'newL9'}

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

" options for airline
let g:airline_theme = 'dark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdocs = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM OPTIONS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

"set list          " Display unprintable characters f12 - switches
"set listchars=eol:·,tab:> ,trail:~,extends:>,precedes:<
set laststatus=2
highlight Normal ctermfg=grey ctermbg=black

" set leader map for more comfortable combination
let mapleader = ","
set foldmethod=manual

" File system search (makes it also fuzzy)
set path+=**
set wildmenu


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>ne :NERDTreeToggle<cr>
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

" remap emmet <C-y>
let g:user_emmet_leader_key='<C-Z>'

"deoplete completion
let g:deoplete#enable_at_startup = 1

"snippets settings ----------------------------------------------
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
" ----------------------------------------------------------------

" for icons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set guioptions-=e

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
" let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

" Ack nmap
nmap <leader>a :tab split<CR>:Ack ""<Left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" swapfiles
set directory=~/.vim/swap,.

"searching
set ignorecase
set smartcase
set relativenumber 
set number
"comments
highlight Comment cterm=italic

"window resizing
let &winheight = &lines * 5 / 10
" set winwidth=104

"see all characters
"example :set listchars=tab:>~,nbsp:_,trail:.
"example :set list
"unicode use
"exec "set listchars=tab:\uBB·,trail:\uB7,nbsp:~"
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set list

"all abouth colors
set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
set background=dark
colorscheme onedark
"colorscheme solarized
let g:solarized_termcolors=256

set autoindent " automatically set indent of new line
set smartindent

" speceal treatment for Gnome-terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif


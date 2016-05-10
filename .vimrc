"first of all: install vundle
"Installation requires Git and triggers git clone for each configured repository to ~/.vim/bundle/ by default. Curl is required for search.
"Set up Vundle:
"$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""""""""""""""""""""
"""""MY PLUGINS"""""
""""""""""""""""""""
"INSTAL YouCompleteMe
"Install development tools and CMake: sudo apt-get install build-essential cmake
"Make sure you have Python headers installed: sudo apt-get install python-dev
"Compiling YCM with semantic support for C-family languages:
"

"cd ~/.vim/bundle/YouCompleteMe
"./install.sh --clang-completer
Bundle 'Valloric/YouCompleteMe'

"HTML Bundle
"Press combination: Ctrl + y + ','
Bundle 'http://github.com/mattn/emmet-vim'

"NERD tree
Bundle 'scrooloose/nerdtree'

"vim множественное выделение текста
Bundle 'terryma/vim-multiple-cursors'

"Строка состояния
"Bundle 'Lokaltog/vim-powerline'

" Airline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
"let g:airline_linecolumn_prefix = '¶ '
"let g:airline_fugitive_prefix = '⎇ '
"let g:airline_paste_symbol = 'ρ'


"Отображения парных тегов
Plugin 'gregsexton/MatchTag'

"Плагин vim-autoformat работает со сторонними 'formatprograms', например js-beautify для HTML, CSS и JavaScript. autopep8 для питона и т.д.
Plugin 'Chiel92/vim-autoformat'

Plugin 'othree/javascript-libraries-syntax.vim'

"Пробельные символы
Plugin 'ntpeters/vim-better-whitespace'

"Jedi-vim autocomplete plugin
Plugin 'davidhalter/jedi-vim'


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




"""""""""""""""""
"""COLOR THEME"""
"""""""""""""""""


" Vim color file
" Converted from Textmate theme Monokai using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256


hi Cursor ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi LineNr ctermfg=102 ctermbg=237 cterm=NONE guifg=#90908a guibg=#3c3d37 gui=NONE
hi VertSplit ctermfg=241 ctermbg=241 cterm=NONE guifg=#64645e guibg=#64645e gui=NONE
hi MatchParen ctermfg=197 ctermbg=NONE cterm=underline guifg=#f92672 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=241 cterm=bold guifg=#f8f8f2 guibg=#64645e gui=bold
hi StatusLineNC ctermfg=231 ctermbg=241 cterm=NONE guifg=#f8f8f2 guibg=#64645e gui=NONE

hi Pmenu ctermfg=235 ctermbg=231 cterm=NONE guifg=#272822 guibg=#f8f8f0 gui=NONE
"hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi IncSearch ctermfg=235 ctermbg=186 cterm=NONE guifg=#272822 guibg=#e6db74 gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Folded ctermfg=242 ctermbg=235 cterm=NONE guifg=#75715e guibg=#272822 gui=NONE
hi SignColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#3c3d37 gui=NONE
hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f2 guibg=#272822 gui=NONE
hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi Conditional ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#46830c gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0807 guibg=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=#243955 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=197 cterm=NONE guifg=#f8f8f0 guibg=#f92672 gui=NONE
hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Function ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi Identifier ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi Keyword ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Label ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=236 cterm=NONE guifg=#49483e guibg=#31322c gui=NONE
hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi Operator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi PreProc ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=237 cterm=NONE guifg=#49483e guibg=#3c3d37 gui=NONE
hi Statement ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi StorageClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi String ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi Tag ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
hi Todo ctermfg=95 ctermbg=NONE cterm=inverse,bold guifg=#75715e guibg=NONE gui=inverse,bold
hi Type ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyFunction ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi rubyControl ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyException ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=95 ctermbg=NONE cterm=NONE guifg=#75715e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=197 ctermbg=NONE cterm=NONE guifg=#f92672 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=186 ctermbg=NONE cterm=NONE guifg=#e6db74 guibg=NONE gui=NONE
hi cssURL ctermfg=208 ctermbg=NONE cterm=NONE guifg=#fd971f guibg=NONE gui=italic
hi cssFunctionName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssClassName ctermfg=148 ctermbg=NONE cterm=NONE guifg=#a6e22e guibg=NONE gui=NONE
hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#ae81ff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE









""""""""""""""""""""""""
"""""USER INTERFACE"""""
""""""""""""""""""""""""
set mouse=a "Включаем мышь
set showmode                 " display the current mode
set ruler                    " always show current position
set scrolloff=30             " set scroll offset to 7 lines above/below cursor
set autoread                 " auto read when file is changed from outside
set nu                       " включить номера строк
set nowrap                   " отключить перенос строк
set clipboard=unnamed        " yank to the system register (*) by default
set hid                      " hide abandon buffers in order to not lose undo history
set showmatch                " cursor shows matching ) and }
set incsearch                " incremental search
set ignorecase               " ignore case when searching
set smartcase                " ignore case if search pattern is all lowercase, case-sensitive otherwise
"set wildchar=<TAB>           " start wild expansion in the command line using <TAB>
set wildmenu                 " wild char completion menu
set showcmd                  " Display an incomplete command in the lower right corner of the Vim window
set completeopt=longest,menuone
set ls=2             " всегда показываем статусбар




""""""""""""""""""
"""""HOT KEYS"""""
""""""""""""""""""
set wildmenu
set wcm=<Tab>
menu MyMenu.[File].quit :quit<CR>
menu MyMenu.[File].quit! :quit!<CR>
menu MyMenu.[File].save :w<CR>
menu MyMenu.[File].save+quit :wq<CR>
menu MyMenu.[Edit].nohlsearch :nohlsearch<CR>
"== Выделение ==
menu MyMenu.[Edit].вставить :p<CR>
menu MyMenu.[Edit].копировать :y<CR>
menu MyMenu.[Edit].удалить :d<CR>
menu MyMenu.[Edit].к_нижнему_регистру :gu<CR>
menu MyMenu.[Edit].к_верхнему_регистру :gU<CR>
"== Буферы / Вкладки ==
menu MyMenu.[Buffers].next :gt<CR>
menu MyMenu.[Buffers].previous :gT<CR>
map <F10> :emenu MyMenu.<Tab>

"Включаем PageUp/PageDown
nnoremap <PageUp> <C-u>
nnoremap <PageDown> <C-d>

map <F2> :NERDTreeToggle<CR>

" C(trl)+S(hift)+d - дублирование текущей строки
imap <C-S-d> <esc>yypi

" " Ctrl-пробел для автодополнения
"inoremap <C-space> <C-x><C-o>

" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"set laststatus=2

" Подсвечивать текущую строку в GUI режиме
set cursorline

" Предыдущая вкладка
" map  <d-left> :tabp<cr>
" nmap <d-left> :tabp<cr>
" imap <d-left> <esc>:tabp<cr>i
"
" " Следующая вкладка
" map  <d-right> :tabn<cr>
" nmap <d-right> :tabn<cr>
" imap <d-right> <esc>:tabn<cr>i




""""""""""""""""""""
"""""Мой конфиг"""""
""""""""Omni""""""""
""""""""""""""""""""
"filetype plugin on
set omnifunc=syntaxcomplete#Complete

"use syntax complete if nothing else available
"crtl+n
"if has("autocmd") && exists("+omnifunc")
"	autocmd Filetype *
"	\ if &omnifunc == "" |
"	\     setlocal omnifunc=syntaxcomplete#Complete |
"	\ endif
"endif

"inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
"        \ "\<lt>C-n>" :
"        \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
"        \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
"        \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
"imap <C-@> <C-Space>




"""""""""""""""
"" Formatting""
"""""""""""""""
"set autoindent               " копирует отступы с текущей строки при добавлении новой
"set copyindent               " copy the previous indentation on autoindenting
"set smarttab                 " insert tabs on line start according to context
"set expandtab                " replace <TAB> with spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4


"
"" Colors and Fonts
"
syntax on                    " enable syntax highlighting
set hlsearch                 " highlight search results
set background=dark          " set background dark
set t_Co=256                 " 256 color mode




"set list listchars=tab:▸·,eol:¬,precedes:«,extends:»,trail:·,nbsp:·
"set list listchars=tab:\▸\ ,eol:¶,precedes:«,extends:»,trail:·,nbsp:·



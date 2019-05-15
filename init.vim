
"""" Searching and Patterns
set ignorecase " search is case insensitive
set smartcase " search case sensitive if caps on
set incsearch " show best match so far
set hlsearch " Highlight matches to the search

"""" Display
"set background=dark
set lazyredraw " Don't repaint when scripts are running
set scrolloff=3 " Keep 3 lines below and above the cursor
set ruler " line numbers and column the cursor is on
set number " Show line numbering
set numberwidth=1 " Use 1 col + 1 space for numbers


"Bundle Scripts-----------------------------
if has('vim_starting')
  set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
  set runtimepath+=~/.config/nvim/
endif

let neobundle_readme=expand('~/.config/nvim/bundle/neobundle.vim/README.md')

if !filereadable(neobundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.config/nvim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.config/nvim/bundle/neobundle.vim/
  let g:not_finsh_neobundle = "yes"
endif

call neobundle#begin(expand('$HOME/.config/nvim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'

	"-- plugins -- "
	NeoBundle 'flazz/vim-colorschemes'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'fholgado/minibufexpl.vim'
	NeoBundle 'vim-scripts/taglist.vim'
	NeoBundle 'wincent/command-t'
	NeoBundle 'luochen1990/rainbow'
	NeoBundle 'nvie/vim-flake8'
    	NeoBundle 'tpope/vim-fugitive'
    	NeoBundle 'davidhalter/jedi-vim'
    	NeoBundle 'MattesGroeger/vim-bookmarks'
    	NeoBundle 'vim-airline/vim-airline'
    	NeoBundle 'sickill/vim-monokai'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck


"Jedi conf
"
let g:jedi#force_py_version = 3
autocmd FileType python setlocal completeopt-=preview


" Nerd tree conf "
"
let NERDTreeIgnore=['env',  'logs', 'README.md', 'BUFFERS', 'mktags.sh', 'TAGS', '\.pyc$', '\.png$', '\.qrc$', '\.ico$', '\.pem$', '\.log$', 'cscope.files', 'cscope.in.out', 'cscope.out', 'cscope.po.out', 'mkscope.sh']
set wildignore+=README.md,BUFFERS,mktags.sh,TAGS,*.pyc,*.png,*.qrc,*.ico,*.pem,*.log,arale_ve,env_marketissimo,*.dat,*.ui,*.txt


" MiniBufExpl Colors
"
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg


" Youcomplete me
"
let g:ycm_python_binary_path = '/usr/bin/python3'
highlight YcmErrorLine guibg=#3f0000
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Win Control "
"
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-A-Left> :bp<CR>
nmap <C-A-Right> :bn<CR>
nmap <C-Left> <C-w>h
nmap <C-Right> <C-w>l



"Gui setup
"
colorscheme monokai

set guifont=Monospace\ 13
syntax enable
set hlsearch

set backspace+=start,eol,indent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


" Remove menu bar and Remove toolbar
"
set guioptions-=m
set guioptions-=T
set guioptions+=LlRrb
set guioptions-=LlRrb


" rainbox conf "
"
let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}

let g:rainbow_active = 1

" Taglist display
"
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>

let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Use_SingleClick = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Auto_Highlight_Tag = 1



" PHP and tex config
"
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd Filetype tex setlocal ts=2 sts=2 sw=2




" Remove and mark empty white spaces at the end of line
"
function! StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre *.py  :call StripTrailingWhitespaces()
autocmd BufWritePre *.c call StripTrailingWhitespaces()
autocmd BufWritePre *.cpp call StripTrailingWhitespaces()
autocmd BufWritePre *.php :call StripTrailingWhitespaces()
autocmd BufWritePre *.sh call StripTrailingWhitespaces()
autocmd BufWritePre *.tex call StripTrailingWhitespaces()
autocmd BufWritePre *.js call StripTrailingWhitespaces()
autocmd BufWritePre *.html :call StripTrailingWhitespaces()
autocmd BufWritePre *.css :call StripTrailingWhitespaces()
autocmd BufWritePre *.txt call StripTrailingWhitespaces()

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Terminal mode
"
:tnoremap <Esc> <C-\><C-n>


" Pyflake8
"
let g:flake8_quickfix_height=7
let g:flake8_show_in_gutter=1
"autocmd BufWritePost *.py call Flake8()



" Custom cmd's
"

" Python comments
map <leader>3 I#<ESC>
vmap <leader>3 I#<ESC>
map <leader>4 X<ESC>
vmap <leader>4 X<ESC>

" C / Java / Javascript / PHP comments
map <leader>7 I//<ESC>
vmap <leader>7 I//<ESC>

"More than 79 chars in python mark in red
:au BufWinEnter *.py let w:m2=matchadd('ErrorMsg', '\%>79v.\+', -1)

" Tabs per extension
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
"    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css,*.yml,*.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" System clipboard. Requires xclip
set clipboard=unnamedplus

" Remove arrows
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>

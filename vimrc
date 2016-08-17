"=====================================================================================
runtime! debian.vim
"=====================================================================================


"=====================================================================================
" colors
"=====================================================================================
colorscheme desert
set background=dark                             " use a dark background
syntax on                                       " syntax highlighting

" Pmenu highlight
"-------------------------------------------------------------------------------------
hi Pmenu        ctermbg=black       ctermfg=darkcyan
hi PmenuSel     ctermbg=black       ctermfg=yellow

" Vimdiff highlight
"-------------------------------------------------------------------------------------
hi DiffAdd      ctermfg=Blue        ctermbg=Black
hi DiffChange   ctermfg=Grey        ctermbg=Black
hi DiffDelete   ctermfg=DarkCyan    ctermbg=Black
hi DiffText     ctermfg=Red         ctermbg=Black

" StatusLine & Split highlight
"-------------------------------------------------------------------------------------
hi StatusLine   cterm=NONE      ctermfg=white      ctermbg=DarkBlue 
hi StatusLineNC cterm=NONE      ctermfg=white      ctermbg=DarkBlue 
hi VertSplit    cterm=NONE      ctermfg=DarkBlue   ctermbg=DarkBlue

" Gui highlight
"-------------------------------------------------------------------------------------
hi Normal       gui=NONE    guibg=Grey8
hi Folded       gui=NONE    guibg=grey8 
hi FoldColumn   gui=NONE    guibg=grey8 
hi NonText      gui=NONE    guibg=grey8
hi StatusLine   gui=NONE    guifg=grey8
hi StatusLineNC gui=NONE    guifg=grey8

"=====================================================================================
" encoding
"=====================================================================================
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,ucs-bom,cp936

set ffs=unix,dos,mac    " favor unix ff, which behaves good under bot Winz & Linux
set fenc=utf-8          " default fileencoding
set fencs=utf-8,ucs-bom,euc-jp,gb18030,gbk,gb2312,cp936


"=====================================================================================
" filetype
"=====================================================================================
filetype on                                     " enable file type detection
filetype plugin on                              " enable loading the plugin for appropriate file type
filetype plugin indent on                       " enable plugin indent for appropriate file type

autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


"=====================================================================================
" key map
"=====================================================================================

" leader map
"-------------------------------------------------------------------------------------
let mapleader = "s"
let g:mapleader = "s"
nmap s <nop>
vmap s <nop>

" map for window and buffer switch
"-------------------------------------------------------------------------------------
map! <F5> <ESC><ESC>:wincmd h<CR>:wincmd j<CR>:bp<CR>
nmap <F5> <ESC><ESC>:wincmd h<CR>:wincmd j<CR>:bp<CR>
map! <F6> <ESC><ESC>:wincmd h<CR>:wincmd j<CR>:bn<CR>
nmap <F6> <ESC><ESC>:wincmd h<CR>:wincmd j<CR>:bn<CR>
map! <F7> <ESC><ESC>:wincmd w<CR>
nmap <F7> <ESC><ESC>:wincmd w<CR>
map! <F8> <ESC><ESC>:wincmd p<CR>
nmap <F8> <ESC><ESC>:wincmd p<CR>

" map for paste mode
"-------------------------------------------------------------------------------------
map! <F9> <ESC><ESC>:set paste<CR>
nmap <F9> <ESC><ESC>:set paste<CR>
map! <F10> <ESC><ESC>:set nopaste<CR>
nmap <F10> <ESC><ESC>:set nopaste<CR>

" map for sdcv
nmap <F11> :!clear && sdcv -n <cword><CR>

" map for astyle
"-------------------------------------------------------------------------------------
map! <F12> <ESC><ESC>:%! astyle -A1 -SKNfwpDx -M80<CR>
nmap <F12> <ESC><ESC>:%! astyle -A1 -SKNfwpDx -M80<CR>

" smart way to move between windows
"-------------------------------------------------------------------------------------
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" map for start windowmager
"-------------------------------------------------------------------------------------
nmap <leader>w :b!1<CR>:only!<CR>:resize 200<CR>:e!~/.vim/file.tmp<CR>:WMToggle<CR>:b!1<CR><C-w>k<C-w>J:resize 1<CR><C-w>k<C-w>l<C-w>H:vertical resize 120<CR><C-l><C-k>w:resize 15<CR><C-w>h<C-w>k:b!1<CR>
"nmap <leader>w :only!<CR>:resize 200<CR>:WMToggle<CR><C-w>l<C-w>H:vertical resize 120<CR><C-l><C-k>w:resize 15<CR><C-w>h<C-w>k
" map for buffer swap command
"-------------------------------------------------------------------------------------
nmap <silent><leader>n :bn<CR>
nmap <silent><leader>p :bp<CR>

" map for run current file
nmap <silent><leader>go :w!<CR>:!chmod 755 ./%<CR>:!clear<CR>:!./%<CR>

" map for external command
"-------------------------------------------------------------------------------------
nmap doc :!clear && doc<CR>
nmap <leader>doc :!clear && doc<CR>
nmap <leader>bai :!clear && baidu <cword><CR>
nmap <leader>dcv :!clear && sdcv -n <cword><CR>
nmap <leader>dat :r! date '+\%F \%H:\%M:\%S'<CR>

" map for vimrepress
"-------------------------------------------------------------------------------------
nmap <leader>bln :BlogNew<CR><CR>:only<CR>
nmap <leader>bll :BlogList<CR><CR>:only<CR>
nmap <leader>bls :BlogSave publish<CR><CR>:only<CR>

" map for easymotion
"-------------------------------------------------------------------------------------
nmap f  <Plug>(easymotion-bd-e)

" map for expect work mode
"-------------------------------------------------------------------------------------
nmap ZZ :wqall<CR>
nmap <C-c> :qa!<CR>
map j gj
map k gk
nmap <leader>o :only<CR>
inoremap jj <ESC>
cnoremap jj <ESC>

"=====================================================================================
" vim attribute set
"=====================================================================================

" base attribute
"-------------------------------------------------------------------------------------
set nocompatible
set history=1000                                " lines of Ex-mode commands, search history
set browsedir=buffer                            " use directory of the related buffer for file browser
set clipboard+=unnamed                          " use clipboard register '*' for all y, d, c, p ops
set viminfo+=!                                  " make sure it can save viminfo
set isk+=$,%,#,-                                " none of these should be word dividers
set confirm                                     " raise a dialog confirm whether to save changed buffer
set autoread                                    " auto readfile while file changed by others
set ignorecase                                  " ignorecase when searchin
set smartcase                                   " when searching try to be smart about cases
set magic                                       " for regular expressions turn magic on

" path/backup
"-------------------------------------------------------------------------------------
"set backup                                     " make backup file and leave it around
set path=.,/usr/include/*,,                     " where gf, ^Wf, :find will search
set tags=./tags,tags
"set autochdir                                   " wrong dir
set makeef=error.err                            " the errorfile for :make and :grep

" vim ui
"-------------------------------------------------------------------------------------
set linespace=0                                 " space it out a little more (easier to read)
set wildmenu                                    " type :h and press <Tab> to look what happens
set ruler                                       " always show current position along the bottom
set cmdheight=1                                 " use 2 screen lines for command-line
"set lazyredraw                                  " do not redraw while executing macros (much faster)
set nonumber                                    " don't print line number
"set relativenumber
set hid                                         " allow to change buffer without saving
"set backspace=2                                " make backspace work normal
set backspace=eol,start,indent                  " Configure backspace so it acts as it should act
"set whichwrap+=<,>,h,l                         " allow backspace and cursor keys to wrap
set mouse=a                                     " use mouse in all modes
set shortmess=atI                               " shorten messages to avoid 'press a key' prompt
set report=0                                    " tell us when anything is changed via :...
set fillchars=vert:\ ,stl:\ ,stlnc:\
                                                " make the splitters between windows be blank
" visual cues
"-------------------------------------------------------------------------------------
set showmatch                                   " show matching paren
set matchtime=5                                 " 1/10 second to show the matching paren
"set nohlsearch                                 " do not highlight searched for phrases
set incsearch                                   " BUT do highlight where the so far typed pattern matches
set scrolloff=10                                " minimal number of lines to keep above/below the cursor
set novisualbell                                " use visual bell instead of beeping
set noerrorbells                                " do not make noise
set t_vb=
set tm=500
"set laststatus=2                               " always show the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
                                                " what to show while :set list
set lbr                                         " linebreak on 500 characters
set tw=500

" text formatting/layout
"-------------------------------------------------------------------------------------
set ai                                          " autoindent
set si                                          " smartindent
set cindent                                     " do C-style indenting
set fo=tcrqn                                    " see help (complex)
set tabstop=4                                   " tab spacing (settings below are just to unify it)
set expandtab                                   " use spaces replace tabs
set softtabstop=4                               " unify
set shiftwidth=4                                " unify
"set noexpandtab                                " real tabs please!
"set smarttab                                   " use tabs at the start of a line, spaces elsewhere
"set nowrap                                     " do not wrap lines
set wrap                                        " wrap lines
set formatoptions+=mM                           " so that vim can reformat multibyte text (e.g. Chinese)

" folding
"-------------------------------------------------------------------------------------
set foldenable                                  " turn on folding
set foldmethod=indent                           " make folding indent sensitive
set foldlevel=100                               " don't autofold anything (but I can still fold manually)
set foldopen -=search                           " don't open folds when you search into them
set foldopen -=undo                             " don't open folds when you undo stuff

" vimdiff
"-------------------------------------------------------------------------------------
set diffopt=filler,context:3

"=====================================================================================
" plugin config
"=====================================================================================

" Tlist plugin config
"-------------------------------------------------------------------------------------
"let Tlist_Close_On_Select=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen = 1
let tlist_make_settings  = 'make;m:makros;t:targets'
let tlist_qmake_settings = 'qmake;t:SystemVariables'

" winmanager config
"-------------------------------------------------------------------------------------
let g:winManagerWindowLayout='FileExplorer|TagList'

" cscope config
"-------------------------------------------------------------------------------------

nmap <leader>sa :cs add cscope.out<CR><CR>
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>

" minibufexplorer config
"-------------------------------------------------------------------------------------
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplModSelTarget = 1
" let g:miniBufExplorerMoreThanOne=0


"=====================================================================================
" gvim config
"=====================================================================================
set gfn=Menlo\ 11.5
set go=""

"=====================================================================================
" dict
"=====================================================================================
autocmd filetype javascript set dictionary+=~/.vim/bundle/vim-dict/dict/javascript.dic
autocmd filetype javascript set dictionary+=~/.vim/bundle/vim-dict/dict/node.dic
autocmd filetype css set dictionary+=~/.vim/bundle/vim-dict/dict/css.dic
autocmd filetype php set dictionary+=~/.vim/bundle/vim-dict/dict/php.dic

"=====================================================================================
" easymotion config
"=====================================================================================
let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj'

"=====================================================================================
" vundle
"=====================================================================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
"-------------------------------------------------------------------------------------
Bundle 'gmarik/vundle'

" Base
"-------------------------------------------------------------------------------------
Bundle 'taglist.vim'
Bundle 'supertab'
Bundle 'minibufexpl.vim'
Bundle 'winmanager'
Bundle 'The-NERD-tree'
Bundle 'ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ack.vim'

" InputMethod
"-------------------------------------------------------------------------------------
Bundle 'vimim'

" Encoding
"-------------------------------------------------------------------------------------
" Bundle 'fencview.vim'

" indent & mark & comp
"-------------------------------------------------------------------------------------
"Bundle 'neocomplcache'
Bundle 'IndentAnything'
"Bundle 'mark'
Bundle 'The-NERD-Commenter'

" VimPress
"-------------------------------------------------------------------------------------
Bundle 'vimrepress'
"Bundle 'ultrablog'

" Python
"-------------------------------------------------------------------------------------
"Bundle 'gg/python.vim'
"Bundle 'vim-ipython'
Bundle 'davidhalter/jedi-vim'

Bundle 'vimwiki'
Bundle 'mattn/calendar-vim'
"Bundle 'amoffat/snake'

" Game
"-------------------------------------------------------------------------------------
"Bundle 'matrix.vim'
"Bundle 'tetris.vim'

" HTML & CSS & JS
"-------------------------------------------------------------------------------------
"Bundle 'jsbeautify'
"Bundle 'html5.vim'
"Bundle 'Javascript-Indentation'
"Bundle 'xml.vim'
"Bundle 'JavaScript-syntax'
"Bundle 'asins/vim-dict'


"
"" Syntax
"Bundle 'asciidoc.vim'
"Bundle 'confluencewiki.vim'
"Bundle 'html5.vim'
"Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
"Bundle 'moin.vim'
"Bundle 'python.vim--Vasiliev'
"Bundle 'xml.vim'
"
"" Color
"
"Bundle 'desert256.vim'
"Bundle 'Impact'
"Bundle 'vibrantink'
"Bundle 'vividchalk.vim'
"
"" Ftplugin
"Bundle 'python_fold'
"
"" Indent
""Bundle 'indent/html.vim'
"Bundle 'IndentAnything'
"Bundle 'Javascript-Indentation'
"Bundle 'mako.vim--Torborg'
"Bundle 'gg/python.vim'
"
"" Plugin
"Bundle 'AutoClose--Alves'
"Bundle 'auto_mkdir'
"Bundle 'cecutil'
"Bundle 'FuzzyFinder'
"Bundle 'L9'
"Bundle 'Mark'
"Bundle 'matrix.vim'
"Bundle 'mru.vim'
"Bundle 'project.vim'
"Bundle 'restart.vim'
"Bundle 'templates.vim'
"Bundle 'ZenCoding.vim'
"Bundle 'css_color.vim'
"Bundle 'hallettj/jslint.vim'
"Bundle 'c.vim'
"Bundle 'snipMate'
"Bundle 'lint.vim'
"Bundle 'benmills/vimux'

"=====================================================================================
" last config
"=====================================================================================
if &diff != 0
    syntax off
endif

if expand('%') == "cscope.files"
    cs add cscope.out
endif

function StarWM()
    only
endfunction

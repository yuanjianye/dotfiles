func! myspacevim#before() abort
    set autowrite
    set autoread

    set foldmethod=syntax
    set nofoldenable

    set nonumber
    set norelativenumber
    set tabstop=4
    set scrolloff=15

    nmap ZZ :wqall<CR>
    nmap <C-c> :qa!<CR>
    let g:floaterm_keymap_toggle = '<C-j>'
    let g:floaterm_autoclose = 2

    inoremap <C-j> <ESC><ESC>:FloatermToggle<cr>

    "nnoremap <C-p> :<C-u>FloatermNew --autoclose=2 floatermfind<cr>
    "nnoremap <C-k> :<C-u>FloatermNew --autoclose=2 floatermglobal<cr>
    nnoremap <C-k> :<C-u> ! daemon floatermexec f<cr><cr>

    nnoremap gb :OpenBrowser https://www.bing.com/search?q=<C-R>=expand("<cword>")<cr><cr>

    nnoremap <F1> :<C-u>FloatermNew --autoclose=2 ranger<cr>
    nnoremap <F3> :<C-u>!tmux popup -h 40 -E -K -R "mfanyi <cword>" <cr><cr>

    "inoremap jj <ESC>
    "cnoremap jj <ESC>

    let g:bookmark_auto_close = 1
    let g:spacevim_enable_cursorline = 0
    let g:spacevim_enable_vimfiler_filetypeicon = 1
    let g:spacevim_lint_on_save = 0
    let g:spacevim_enable_neomake = 0

    let g:neomake_echo_current_error = 0

    let b:coc_suggest_disable = 1
    let b:coc_diagnostic_disable = 1

    let g:floaterm_width = 0.6
    let g:floaterm_height = 0.95
    let g:floaterm_position = 'right'

    let g:neosnippet#snippets_directory='~/.SpaceVim.d/snippets'

endf

func! myspacevim#after() abort
    " Pmenu highlight
    "-------------------------------------------------------------------------------------
    hi Pmenu        ctermbg=NONE       ctermfg=darkcyan
    hi PmenuSel     ctermbg=NONE       ctermfg=yellow

    " Vimdiff highlight
    "-------------------------------------------------------------------------------------
    hi DiffAdd      ctermfg=Blue        ctermbg=NONE
    hi DiffChange   ctermfg=Grey        ctermbg=NONE
    hi DiffDelete   ctermfg=DarkCyan    ctermbg=NONE
    hi DiffText     ctermfg=Red         ctermbg=NONE

    " StatusLine & Split highlight
    "-------------------------------------------------------------------------------------
    " hi StatusLine   cterm=NONE      ctermfg=Yellow       ctermbg=DarkBlue
    " hi StatusLineNC cterm=NONE      ctermfg=Yellow       ctermbg=DarkBlue
    hi VertSplit    cterm=NONE      ctermfg=Grey         ctermbg=NONE

    " Gui highlight
    "-------------------------------------------------------------------------------------
    hi Normal       gui=NONE    guibg=Grey8
    hi Folded       gui=NONE    guibg=grey8
    hi FoldColumn   gui=NONE    guibg=grey8
    hi NonText      gui=NONE    guibg=grey8
    hi StatusLine   gui=NONE    guifg=grey8
    hi StatusLineNC gui=NONE    guifg=grey8

    "set cursorline
    hi CursorLine  cterm=NONE   ctermbg=DarkBlue

    iunmap jk
    iunmap "
    iunmap '
endf

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
    "let g:floaterm_autoclose = 2

    "nnoremap <F1> :<C-u>FloatermKill shell<cr> :<C-u>FloatermToggle<cr>
    "nnoremap <F5> :<C-u>FloatermKill shell<cr> :<C-u>FloatermNew --autoclose=1 --name=shell floatermfind<cr>
    "nnoremap <F6> :<C-u>FloatermKill shell<cr> :<C-u>FloatermNew --autoclose=1 --name=shell floatermglobal<cr>

    "nnoremap <F5> :<C-u>FloatermNew --autoclose=2 floatermfind<cr>
    nnoremap <C-p> :<C-u>FloatermNew --autoclose=2 floatermfind<cr>
    nnoremap sd   <SPC>bd
    "nnoremap <F6> :<C-u>FloatermNew --autoclose=2 floatermglobal<cr>
    nnoremap <C-k> :<C-u>FloatermNew --autoclose=2 floatermglobal<cr>
    inoremap <C-j> <ESC><ESC>:FloatermToggle<cr>

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

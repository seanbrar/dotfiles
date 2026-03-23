" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'

call plug#end()

" General Settings
set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
set laststatus=2

" VimTeX Configuration
let g:tex_flavor='latex'

" Viewer options
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

" Compiler options
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \   '-pdf',
    \   '-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" TOC settings
let g:vimtex_toc_config = {
    \ 'name' : 'TOC',
    \ 'layers' : ['content', 'todo', 'include'],
    \ 'resize' : 1,
    \ 'split_width' : 50,
    \ 'todo_sorted' : 0,
    \ 'show_help' : 1,
    \ 'show_numbers' : 1,
    \ 'mode' : 2,
    \}

" Fold settings
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types = {
    \ 'comments' : {'enabled' : 1},
    \ 'preamble' : {'enabled' : 1},
    \ 'envs' : {
    \   'blacklist' : ['equation'],
    \ },
    \}

" Syntax concealment
set conceallevel=2
let g:vimtex_syntax_conceal = {
    \ 'accents' : 1,
    \ 'ligatures' : 1,
    \ 'cites' : 1,
    \ 'fancy' : 1,
    \ 'greek' : 1,
    \ 'math_bounds' : 1,
    \ 'math_delimiters' : 1,
    \ 'math_fracs' : 1,
    \ 'math_super_sub' : 1,
    \ 'math_symbols' : 1,
    \ 'sections' : 1,
    \ 'styles' : 1,
    \}

" QuickFix window
let g:vimtex_quickfix_mode = 0
let g:vimtex_quickfix_open_on_warning = 0

" Ignore certain warning messages
let g:vimtex_quickfix_ignore_filters = [
    \ 'Underfull \\hbox',
    \ 'Overfull \\hbox',
    \ 'LaTeX Warning: .\+ float specifier changed to',
    \ 'LaTeX hooks Warning',
    \ 'Package siunitx Warning: Detected the "physics" package:',
    \ 'Package hyperref Warning: Token not allowed in a PDF string',
    \]

" Latex warnings to ignore
let g:vimtex_log_ignore = [
    \ 'Underfull',
    \ 'Overfull',
    \ 'specifier changed to',
    \ 'Token not allowed in a PDF string',
    \]

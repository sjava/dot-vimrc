source ~/.vim/bundles.vim

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

" Set mapleader
let mapleader=","
"--------
" Vim UI
"--------
" color scheme
set background=dark
color Tomorrow-Night

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " dont wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
set expandtab       " expand tab to space
inoremap # X#

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------
" Rainbow parentheses for Lisp and variants
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket,python RainbowParenthesesToggle

" tabbar
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=245
hi Tb_Changed guifg=green ctermfg=167
hi Tb_VisibleNormal ctermbg=235 ctermfg=117
hi Tb_VisibleChanged guifg=green ctermbg=235 ctermfg=117

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" tag for coffee
if executable('coffeetags')
    let g:tagbar_type_coffee = {
                \ 'ctagsbin' : 'coffeetags',
                \ 'ctagsargs' : '',
                \ 'kinds' : [
                \ 'f:functions',
                \ 'o:object',
                \ ],
                \ 'sro' : ".",
                \ 'kind2scope' : {
                \ 'f' : 'object',
                \ 'o' : 'object',
                \ }
                \ }

    let g:tagbar_type_markdown = {
                \ 'ctagstype' : 'markdown',
                \ 'sort' : 0,
                \ 'kinds' : [
                \ 'h:sections'
                \ ]
                \ }
endif

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" ZenCoding
let g:user_emmet_expandabbr_key='<C-j>'

" powerline
" let g:Powerline_symbols = 'fancy'



" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'


" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <C-S-t> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
            \ if ! exists("g:leave_my_cursor_position_alone") |
            \     if line("'\"") > 0 && line ("'\"") <= line("$") |
            \         exe "normal g'\"" |
            \     endif |
            \ endif

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" eggcache vim
nnoremap ; :
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    " set guifont=UbuntuMono\ 12
    set guifont=Source\ Code\ Pro\ 11
    set showtabline=2
    set columns=140
    set lines=40
endif

let g:jedi#force_py_version = 3
let g:pyenv#auto_activate=0
au BufWrite *.py :Autoformat
let g:autoformat_autoindent = 0

autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

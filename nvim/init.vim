" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'rust-lang/rust.vim'
    Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS
    Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

set clipboard+=unnamedplus
set splitbelow splitright
set number relativenumber nowrap
set spell spelllang=en_us

" set background=dark

au ColorScheme * hi Normal ctermbg=none guibg=none

" added for rust plugin
syntax enable
filetype plugin indent on

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Remap splits navigation to just CTRL-hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" reminder: leader is "\" so \tt gives a new terminal
nnoremap <Leader>tt :vnew term://zsh<CR>
nnoremap <Leader>pv :set nosplitright<bar> :vsp<bar> :Ex<bar> :vertical resize 30<bar> :set splitright<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/dotfiles/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" Change 2 split windows from vert to horiz or horiz to vert 
nnoremap <Leader>th <C-w>t<C-w>H 
nnoremap <Leader>tk <C-w>t<C-w>K 

" Removes pipes | that act as seperators on splits 
set fillchars+=vert:\

set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

" use 4 spaces instead of tab ()
" copy indent from current line when starting a new line

set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hidden
set wildmenu
set path +=**

" Show substitution
set inccommand=nosplit

nnoremap <space> <nop>
let mapleader = "\<space>"

nnoremap <leader>bn :bn<cr> ;buffer next
nnoremap <leader>tn gt ;new tab

" Config for chrisbra/csv.vim
augroup filetype_csv
    autocmd! 

    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END

" Config for fzf.vim (BONUS :D)
nnoremap <leader>f :Files<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader><space> :Rg<cr>

" added for mutt and text_flowed
setl tw=72
setl fo=watqc
setl nojs
setl nosmartindent
setl list
"set listchars=trail:*

highlight DiffAdd    cterm=BOLD ctermfg=NONE ctermbg=22
highlight DiffDelete cterm=BOLD ctermfg=NONE ctermbg=52
highlight DiffChange cterm=BOLD ctermfg=NONE ctermbg=23
highlight DiffText   cterm=BOLD ctermfg=NONE ctermbg=23
highlight IncSearch  cterm=BOLD ctermfg=NONE ctermbg=23

set termguicolors | "Use the right colors
colorscheme nightfly
let g:lightline = { 'colorscheme' : 'nightfly'}
let g:nightflyCursorColor = 1
let g:nightflyUnderlineMatchParen = 1

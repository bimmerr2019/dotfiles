" Plugins
call plug#begin("$XDG_CONFIG_HOME/nvim/plugged")
    Plug 'chrisbra/csv.vim'
    Plug 'moll/vim-bbye'
    Plug 'simeji/winresizer'
    Plug 'junegunn/fzf.vim'
    Plug 'simnalamburt/vim-mundo'
call plug#end()

set clipboard+=unnamedplus
set splitbelow splitright

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
map <Leader>tt :vnew term://zsh<CR>
map <Leader>pv :set nosplitright<bar> :vsp<bar> :Ex<bar> :vertical resize 30<bar> :set splitright<CR>

" Change 2 split windows from vert to horiz or horiz to vert 
map <Leader>th <C-w>t<C-w>H 
map <Leader>tk <C-w>t<C-w>K 

" Removes pipes | that act as seperators on splits 
set fillchars+=vert:\

set noswapfile

" save undo trees in files
set undofile
set undodir=$HOME/.config/nvim/undo

" number of undo saved
set undolevels=10000
set undoreload=10000

set number

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

set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
syntax on
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set autoindent
set noswapfile
set nobackup
set ruler
set backspace=indent,eol,start

let mapleader = ","

" Bubble single lines <C-S-[K,J]>
nmap <Esc>K [e
nmap <Esc>J ]e

" Bubble multiple lines <C-S-[K,J]> 
vmap <Esc>K [egv
vmap <Esc>J ]egv

" Copy & Paste
map <silent> <leader>y "+y
map <silent> <leader>p "+gp
set pastetoggle=<leader>gv

" Windows Control
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <silent> <leader>h <C-w>h
nmap <silent> <leader>j <C-w>j
nmap <silent> <leader>k <C-w>k
nmap <silent> <leader>l <C-w>l

" Tabs Control
map <A-[> gT
map <A-]> gt
map <S-h> gT
map <S-l> gt
nmap <silent> <leader>t :tabnew<Cr>
"nmap <C-t> :tabnew<CR>
"map! <C-t> <Esc>:tabnew<CR>

map <F2> :NERDTreeToggle<CR>
map <silent> <leader>g1 :NERDTreeToggle<CR>
map <F3> :TlistToggle<CR>
map <silent> <leader>g2 :TlistToggle<CR>

" Search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" display line up/down (not actual)
map <up> gk
map <down> gj

" Some handy Emacs key bindings
cnoremap <C-A>      <Home>
cnoremap <C-B>      <Left>
cnoremap <C-E>      <End>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <End>
cnoremap <C-P>      <Up>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>

imap <C-a> <Home>
imap <C-e> <End>
imap <C-p> <Esc>ka
imap <C-n> <Esc>ja
imap <C-b> <Esc>i
imap <C-f> <Esc>la
imap <M-b> <Esc>bi
imap <M-f> <Esc>wi

nmap <Tab> %

nmap <silent> <leader>gs :set spell!<CR>
nmap <silent> <leader>gn :set number!<CR>
nmap <silent> <leader>gw :set wrap!<CR>
set wildmode=full " :longest
set wildmenu

set formatprg=par
nmap <silent> <leader>fp :set formatprg=par

"folding settings
set foldmethod=indent
set foldnestmax=10
set foldenable
set foldlevel=2
set foldlevelstart=2
nmap <silent> <leader>fi :set foldmethod=indent<CR>
nmap <silent> <leader>fs :set foldmethod=syntax<CR>
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" FuzzyFinder key mappings
nmap <silent> <leader>ff :FufFile<CR>
nmap <silent> <leader>fF :FufFileWithCurrentBufferDir<CR>
nmap <silent> <leader>ft :FufTag<CR>
nmap <silent> <leader>fc :FufChangeList<CR>
nmap <silent> <leader>fj :FufJumpList<CR>
nmap <silent> <leader>fd :FufDir<CR>

" Lookup tags file up the dir tree
set tags=tags;/
" Tab and Vsplit open tag
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <silent> <leader>] :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Source the vimrc file after saving it
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

if has('gui_running')
    set guioptions=r
    set lines=33 columns=100
    set cursorline
    colorscheme lucius
else
    if ( $TERM =~ "xterm" && !( $TMUX =~ "tmux" ) && !( $TERMCAP =~"screen" ) )
        set t_Co=256
        colorscheme lucius
    endif
    nmap <silent> <leader>c2 :set t_Co=256<CR>
    nmap <silent> <leader>c8 :set t_Co=8<CR>
endif


" Command mode shortcut
map ; :

" one-key indentation
nmap > >>
nmap < <<

command! Sw :w !sudo tee %

" For LISP
let g:lisp_rainbow=1

" Settings for Vim Clojure
let g:clj_highlight_builtins=1
let g:clj_highlight_contrib=1
let g:clj_paren_rainbow=1


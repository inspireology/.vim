"http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
"
call pathogen#infect()
call pathogen#helptags()

set omnifunc=csscomplete#CompleteCSS

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
noremap! <D-Left> <Home>
noremap! <M-Left> <C-Left>
noremap! <D-Right> <End>
noremap! <M-Right> <C-Right>
inoremap <D-Up> <C-Home>
"make indenting auto select the block again
vnoremap < <gv
vnoremap > >gv

map <right> :bn<RETURN>
map <left> :bp<RETURN>

inoremap <C-space> <C-x><C-o>
:set omnifunc=csscomplete#CompleteCSS

imap <M-Up> {
inoremap <D-Down> <C-End>
imap <M-Down> }
map! <D-v> *
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
noremap <D-Left> <Home>
noremap <M-Left> <C-Left>
noremap <D-Right> <End>
noremap <M-Right> <C-Right>
noremap <D-Up> <C-Home>
map <M-Up> {
noremap <D-Down> <C-End>
map <M-Down> }
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P

noremap <A-j> gT
noremap <A-k> gt
nnoremap j gj
nnoremap k gk
nnoremap ; :
set hidden

"To save, ctrl-s
nmap <c-s> :w<CR>
imap <c-s> <Esc> :w<CR>a

"sets auto searching and case ignorace
set incsearch
set hlsearch 
nnoremap <silent> <F3> :set hlsearch!<CR>

nnoremap <silent> <F4> :set wrap!<CR>
"set line numbers
set number
set ruler
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"remap the move between split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap ê gT
noremap ë gt
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set termencoding=utf-8
set virtualedit=all
" vim: set ft=vim :
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
set nowrap

"set showmatch
set smarttab

set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
filetype plugin on      " use the file type plugins

"folding settings http://smartic.us/2009/04/06/code-folding-in-vim/
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set gfn=Menlo\ Regular:h12
set cursorline

colorscheme desert
"colorscheme selenitic
"colorscheme pyte
"colorscheme jellybeans
"colorscheme sonofobsidian
"colorscheme symfony
"colorscheme railscasts

"set gfn=Menlo\ Bold:h14
set gfn=Menlo\ Regular:h15

"let g:yankring_history_file = '.vim/yankring_history'

"set relativenumber
set number
set ts=4
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set nostartofline

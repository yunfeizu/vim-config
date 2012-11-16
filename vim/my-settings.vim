set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set cindent

call pathogen#infect()
call pathogen#helptags()

" silent exec "colorscheme desertEx"
silent exec "colorscheme molokai"

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.*/
set colorcolumn=100

let OmniCpp_DefaultNamespaces = ["std", "model", "esp"]

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %

"enable menu but disable alt key menu shotcut
 " set guioptions+=m
set winaltkeys=no

"disable bell and flash warning
set noeb vb t_vb=
au GUIEnter * set vb t_vb=


"Repeat last command and put cursor at start of change
nmap . .`[
map <F9> <Esc>:wa<CR>:make debug -j 4 -C %:p:h <CR>
map <M-F9> :copen <CR>
map <C-F9> :cclose <CR>
map <F10> :cn <CR>
map <M-F10> :cp <CR>
map <F12> :ExpjSelectToggle <CR>
map <F6> <Esc>:VCSGotoOriginal!<CR>:VCSVimDiff<CR>:VCSGotoOriginal<CR>
map <M-F6> <Esc>:diffupdate <CR>
map <C-F6> <Esc>:VCSGotoOriginal! <CR>  
map <silent> <F2> :ExtsGoDirectly<CR>
map <silent> <F3> :CSCD<CR>
map <silent> <M-F3> :ExcsParseFunction<CR>

nnoremap <unique> <leader>ft :NERDTreeFind<CR>

let g:LookupFile_DisableDefaultMap=1
let g:ctrlp_extensions = ['buffertag']
map <unique> <silent> <F5> :CtrlP CWD<CR>
nmap <unique> <silent> <M-b> :CtrlPBuffer<CR>

let Grep_Skip_Dirs='RCS CVS SCCS .svn'
nnoremap <F8> :GundoToggle<CR> <C-w>=
nnoremap <F7> :YRShow<CR>


nmap <Leader>N <Plug>MarkAllClear

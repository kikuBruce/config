"""""""""""
"Vim Config 
"""""""""""
let mapleader=","
set nu
syntax on
set cursorline

set tags+=tags

"set mouse=a
"set selection=exclusive
"set selectmode=mouse,key

set laststatus=2
set completeopt=longest,menu
set ruler
set backspace=2


""""""""
"Plugin
""""""""
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Jedi
Plugin 'davidhalter/jedi-vim'
" EasyComplete
Plugin 'jayli/vim-easycomplete'
Plugin 'jayli/vim-dictionary'
" Tree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" AirLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" IndentLine
Plugin 'Yggdroot/indentLine'
" ctrlp.vim
Plugin 'kien/ctrlp.vim'
" python mode
" Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'last-py2-support' }
call vundle#end()


""""""""""""""
"Plugin Config
""""""""""""""
imap <Tab>   <Plug>EasyCompTabTrigger
imap <S-Tab> <Plug>EasyCompShiftTabTrigger
" let g:pmenu_scheme = 'dark'

" Jedi
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
autocmd FileType python setlocal completeopt-=preview
 
" AirLin
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'


" NERDTree
map <leader>e :NERDTreeMirror<CR>
map <leader>e :NERDTreeToggle<CR>
map <leader>a :NERDTreeFind<CR>
let NERDTreeWinSize = 50
let g:NERDTreeGitStatusUseNerdFonts = 1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowLineNumbers = 1
let NERDTreeAutoCenter = 1

" Ctrelp
let g:ctrlp_mruf_max = 50
let g:ctrlp_follow_symlinks = 1

" python mode
" let g:pymode_python = 'python3'
" let g:pymode_trim_whitespaces = 1
" let g:pymode_doc = 1
" let g:python_doc_bind = 'K'
" let g:python_repo_goto_definition_bind = '<C-]>'
" let g:python_lint = 1
" let g:python_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
" let g:python_options_max_line_length = 120


set nocompatible              " be iMproved, required 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" : PluginList          - list configured plugins
" : PluginInstall(!)    - install (update) plugins
" : PluginSearch(!) foo - search (or refresh cache first) for foo
" : PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line


" 安装C++相关插件
" 安装Ctags 
Plugin 'ctags.vim'
" 安装taglist
Plugin 'taglist.vim'
" 安装Cscope
Plugin 'cscope.vim'
" 安装OmniCppComplete
Plugin 'OmniCppComplete'
" 安装SuperTab
" Plugin 'SuperTab'
" 安装Winmanager
Plugin 'winmanager'
" 安装Nerdtree
Plugin 'https://github.com/scrooloose/nerdtree.git' 
Plugin 'https://github.com/scrooloose/syntastic.git' 
Plugin 'https://github.com/scrooloose/nerdcommenter.git' 
" 安装MiniBufferExplorer
Plugin 'minibufexpl.vim'
Plugin 'delimitMate.vim'
Plugin 'Tagbar'
Plugin 'Solarized'

" 安装CtrlP插件,for find files
Plugin 'ctrlp.vim'

" Python plugins 
Plugin 'davidhalter/jedi-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" golang plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on 
set nu
set autoindent
set tabstop=4
set shiftwidth=4
set ruler 
set nocompatible 
set autoindent 
set cindent 
set sw=4 
set ignorecase 
set hlsearch 
set incsearch 
filetype on 
filetype plugin on 
filetype indent on 
set smartindent 
set backspace=2 
set expandtab 
"set background=dark
"colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配置插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-F11> :!cscope -Rbq -f ./cscope.out<CR> 
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
" let Tlist_Show_One_File=1  
" let Tlist_Exit_OnlyWindow=1 
set cscopequickfix=s-,c-,d-,i-,t-,e-  
set nocp  
filetype plugin on 
"let g:SuperTabDefaultCompletionType="context" 
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0  
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
function! NERDTree_IsValid()  
    return 1  
endfunction 

nmap wm :WMToggle<CR>
set tags+=~/.vim/tags/cpp  
nmap \ :TagbarOpenAutoClose<CR>

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" 配置cscope按键映射
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  配置ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files = 0 
let g:ctrlp_max_depth = 40


"let g:ctrlp_custom_ignore = {
"            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"            \ 'file': '\v\.(exe|so|dll)$',
"            \ 'link': 'some_bad_symbolic_links',
"            \ }
"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config go's plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set mapleader
" let mapleader = ","

" vim-go custom mappings
"au FileType go nmap s (go-implements)
"au FileType go nmap i (go-info)
"au FileType go nmap gd (go-doc)
"au FileType go nmap gv (go-doc-vertical)
"au FileType go nmap r (go-run)
"au FileType go nmap b (go-build)
"au FileType go nmap t (go-test)
"au FileType go nmap c (go-coverage)
"au FileType go nmap ds (go-def-split)
"au FileType go nmap dv (go-def-vertical)
"au FileType go nmap dt (go-def-tab)
"au FileType go nmap e (go-rename)

" vim-go settings
let g:go_fmt_command = "goimports"
"
" " YCM settings
" let g:ycm_key_list_select_completion = ['', '']
" let g:ycm_key_list_previous_completion = ['', '']
" let g:ycm_key_invoke_completion = ''
"
" " UltiSnips settings
" let g:UltiSnipsExpandTrigger="
" let g:UltiSnipsJumpForwardTrigger=""
" let g:UltiSnipsJumpBackwardTrigger=""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" config vim-go GoReferrers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-c> <Esc>:GoReferrers<CR> 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" config YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>lo :lopen<CR>      "open locationlist
nnoremap <leader>lc :lclose<CR>     "close locationlist
"set runtimepath+=~/.vim/bundle/YouCompleteMe
"let g:ycm_collect_identifiers_from_tags_files = 1  " 开启 YCM 基于标签引擎
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_min_num_of_chars_for_completion=2     " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=1                      " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1        " 语法关键字补全
let g:ycm_complete_in_comments = 1              " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1               " 在字符串输入中也能补全
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
inoremap <leader><leader> <C-x><C-o>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            " 回车即选中当前项
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     " 跳转到定义处

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" config tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_width = 20
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1 "focus on tagbar when open it

" close scratch,preview window
set completeopt-=preview


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" config python plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_python_exec = 'python3.6'



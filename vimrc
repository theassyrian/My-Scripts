" not load for tiny vi
if !1 | finish | endif

filetype off                   " required!

:filetype plugin indent on
:filetype plugin on
:filetype indent on
syntax on

set number      " Show line numbers
set textwidth=100   " Line wrap (number of cols)
set showmatch   " Highlight matching brace
set visualbell  " Use visual bell (no beeping)
set title             " change the terminal's title
set mouse=a           " enable mouse in all modes
set clipboard=unnamedplus
set go+=a
" New splits open to right and bottom
set splitbelow
set splitright
" Autofolding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldcolumn=2
set report=0
" Encoding
set encoding=utf-8
" Search option
set hlsearch
set incsearch
set cursorline            " Color the cursorline
set undolevels=1000       " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
set ignorecase
set smartcase
set infercase       " Adjust case in insert completion mode
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
" Cleanup
set nobackup
set nowb
set noswapfile
set hidden
" Statusline
set laststatus=2
" Tabbar
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline
" Frequency update
set updatetime=250
" Behaviour
set nostartofline               " Cursor in same column for few commands
set whichwrap+=h,l,<,>,[,],~    " Move to following line on certain keys
set backspace=indent,eol,start  " Intuitive backspacing in insert mode
set showfulltag                 " Show tag and tidy search in completion
set noshowmode          " Don't show mode in cmd window
set shortmess=aoOTI     " Shorten messages and don't show intro
set scrolloff=2         " Keep at least 2 lines above/below
set sidescrolloff=5     " Keep at least 5 lines left/right
set noshowcmd           " Don't show command in status line
" Enable indent
set ai
set sw=4
set showtabline=2
set shiftwidth=4     " Number of auto-indent spaces
set smarttab         " Enable smart-tabs
set softtabstop=4    " Number of spaces per Tab
" Enable smart-indent
set smartindent
" Auto-indent new lines
set autoindent
" Set the file path as pwd
set autochdir
" Set global replacement as the default
set gdefault
" Better wrapping with indentation
set breakindent
set showbreak=\\\\\
set wildmenu
" Set color
set background=dark
set guifont=DroidSansMono\ Nerd\ Font\ 11
colorscheme valloric
syntax enable
" exclusions from the autocomplete menu
set wildoptions=tagfile
set wildignorecase
set wildignore+=*.so
set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**
set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
set wildignore+=__pycache__,*.egg-info
set wildignore+=*.o,*.out,*.obj,*.rbc,*.rbo,*.class,*.gem
set wildignore+=*.gif,*.jpg,*.png,*.log
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,*~,._*,*/vendor/cache/*,*/.sass-cache/*
set wildignore+=*/public/assets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=.DS_Store

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Package manager
Plugin 'VundleVim/Vundle.vim'
" display the result when searching
Plugin 'henrik/vim-indexed-search'
" wrapper for git and display git diff in the left gutter
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
" surrounding with whatever you want (paranthesis, quotes...)
Plugin 'tpope/vim-surround'
" easily search, substitute and abbreviate multiple version of words
Plugin 'tpope/vim-abolish'
" Match more stuff with % (html tag, LaTeX...)
Plugin 'tmhedberg/matchit'
" Autocomplete system in real time
Plugin 'Shougo/deoplete.nvim'
if !has('nvim')
    Plugin 'roxma/vim-hug-neovim-rpc'
    Plugin 'roxma/nvim-yarp'
endif
Plugin 'Shougo/echodoc.vim'
" startify for a cool home page
Plugin 'mhinz/vim-startify'
" Snippets engine and... snippets!
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sniphpets/sniphpets'
Plugin 'sniphpets/sniphpets-common'
" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" php autocompletion engine and tools
Plugin 'padawan-php/padawan.vim'
Plugin 'padawan-php/deoplete-padawan'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin '2072/vim-syntax-for-PHP.git'
Plugin 'nishigori/vim-php-dictionary'
Plugin '2072/PHP-Indenting-for-VIm'
" php doc autocompletion
Plugin 'tobyS/vmustache' | Plugin 'tobyS/pdv'
" Syntax highlighting for vue js framework
Plugin 'posva/vim-vue'
" autoclose bracket and parenthesis when open
Plugin 'Townk/vim-autoclose'
" debugger, https://github.com/joonty/vdebug/pull/316
Plugin 'joonty/vdebug'
" object view
Plugin 'majutsushi/tagbar'
Plugin 'hushicai/tagbar-javascript.vim'
" Folding fast is important
Plugin 'Konfekt/FastFold'
" Nerdtree + modifications: git icons plugin, color filetype plugin
Plugin 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Bundle 'jistr/vim-nerdtree-tabs'
" status bar
Plugin 'jacoborus/tender.vim'
Plugin 'itchyny/lightline.vim'
" Tags are very important
Plugin 'ludovicchabant/vim-gutentags'
" undo tree
Plugin 'sjl/gundo.vim'
if !has('gui_running')
    " fzf - poweful search
    Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plugin 'junegunn/fzf.vim'
endif
" allow multisearch in current directory / multi replace as well
Plugin 'wincent/ferret'
" display the hexadecimal colors - useful for css and color config
Plugin 'ap/vim-css-color'
" Search stuff, helpful on editing
Plugin 'ctrlpvim/ctrlp.vim'
" WordPress
Plugin 'salcode/vim-wordpress-dict'
Plugin 'sudar/vim-wordpress-snippets'
" Echo error_log/console.error_log
Plugin 'salcode/vim-error-log-shortcut'
" Web
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'chrisbra/colorizer'
Plugin 'mklabs/grunt.vim'
Plugin 'groenewege/vim-less'
Plugin 'Valloric/MatchTagAlways'
Plugin 'othree/csscomplete.vim'
" close tags on </
Plugin 'docunext/closetag.vim'
" Javascript
Plugin 'nono/jquery.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'moll/vim-node'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'vim-scripts/vim-coffee-script'
Plugin 'mattn/webapi-vim'
Plugin 'elzr/vim-json'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'lukaszkorecki/CoffeeTags'
" Align code
Plugin 'tommcdo/vim-lion'
" Cool icons"
Plugin 'ryanoasis/vim-devicons'
" Report lint errors
Plugin 'w0rp/ale'
Plugin 'maximbaz/lightline-ale'
" Wakatime
Plugin 'wakatime/vim-wakatime'
" Misc
Plugin 'editorconfig/editorconfig-vim'
Plugin 'wincent/terminus'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
call vundle#end()

" Add support of stuff on different files
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
autocmd FileType php.wordpress setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType php let b:surround_45 = "<?php \r ?>"
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Alias for git add
autocmd User fugitive command! -bar -buffer -nargs=* Gadd :Gwrite <args>
" nerdtree configuration
function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    if (expand("%:t") != '')
      exe ":NERDTreeFind"
    else
      exe ":NERDTreeToggle"
    endif
  endif
endfunction
"  don't display informations (type ? for help and so on)
let g:NERDTreeMinimalUI = 1
"  don't replace the native vim file explorer
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeWinSize=35
"  change the arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
if !has('gui_running')
    " Open by default
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
    autocmd StdinReadPre * let s:std_in=1
endif
"  ignore files
let NERDTreeIgnore = [
	\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.svn$', '__init__.py',
	\ '\.DS_Store$', '\.sass*$', '__pycache__$', '\.egg-info$', '\.cache$','composer','node_modules'
\ ]
" Webdevicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let entry_format = "'   ['. index .']'. repeat(' ', (3 - strlen(index)))"
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
if exists('*WebDevIconsGetFileTypeSymbol')  " support for vim-devicons
  let entry_format .= ". WebDevIconsGetFileTypeSymbol(entry_path) .' '.  entry_path"
else
  let entry_format .= '. entry_path'
endif
" fzf for search files
if !has('gui_running')
    autocmd VimEnter * command! -nargs=* Ag call fzf#run({
    \ 'source':  printf('ag -U --nogroup --column --color "%s"',
    \                   escape(empty(<q-args>) ? '^(?=.)' : <q-args>, '"\')),
    \ 'sink*':    function('<sid>ag_handler'),
    \ 'options': '--ansi --expect=ctrl-t,ctrl-v,ctrl-x --delimiter : --nth 4.. '.
    \            '--multi --bind=ctrl-a:select-all,ctrl-d:deselect-all '.
    \            '--color hl:68,hl+:110',
    \ 'down':    '50%'
    \ })

    autocmd VimEnter * command! -nargs=* Rg
    \ call fzf#vim#grep(
    \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
    \   <bang>0 ? fzf#vim#with_preview('up:60%')
    \           : fzf#vim#with_preview('right:50%:hidden', '?'),
    \ <bang>0)
endif
" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#skip_chars = ['(', ')', '<', '>']
let g:deoplete#tag#cache_limit_size = 800000
"  deoplete tab-complete
let g:deoplete#file#enable_buffer_path = 1
"  delay for auto complete and refresh
let g:deoplete#auto_complete_delay= 75
let g:deoplete#auto_refresh_delay= 5
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#sources#padawan#add_parentheses = 1
let g:deoplete#skip_chars = ['$']
"  compatibility with phpcd
let g:deoplete_ignore_sources = get(g:, 'deoplete#ignore_sources', {})
"  Compatibility with phpcomplete
let g:deoplete#omni_patterns = {}
let g:deoplete#sources = {}
let g:deoplete#sources.php = ['padawan', 'ultisnips', 'buffer']
"  Other stuff
let g:deoplete_ignore_sources.html = ['syntax']
let g:deoplete#omni#functions = get(g:, 'deoplete#omni#functions', {})
let g:deoplete#omni#functions.css = 'csscomplete#CompleteCSS'
let g:deoplete#omni#functions.html = 'htmlcomplete#CompleteTags'
let g:deoplete#omni#functions.markdown = 'htmlcomplete#CompleteTags'
let g:deoplete#omni_patterns = get(g:, 'deoplete#omni_patterns', {})
let g:deoplete#omni_patterns.html = '<[^>]*'
let g:deoplete#omni_patterns.php =
	\ '\h\w*\|[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:deoplete#omni#input_patterns = get(g:, 'deoplete#omni#input_patterns', {})
let g:deoplete#omni#input_patterns.xml = '<[^>]*'
let g:deoplete#omni#input_patterns.md = '<[^>]*'
let g:deoplete#omni#input_patterns.css  = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.scss = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.sass = '^\s\+\w\+\|\w\+[):;]\?\s\+\w*\|[@!]'
let g:deoplete#omni#input_patterns.python = ''
let g:deoplete#omni#input_patterns.javascript = ''
" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn))$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }
" vdebug
let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options["ide_key"] = "VVVDEBUG"
let g:vdebug_keymap = {
\    "run" : "<F5>",
\    "run_to_cursor" : "<F9>",
\    "step_over" : "<F2>",
\    "step_into" : "<F3>",
\    "step_out" : "<F4>",
\    "close" : "<F6>",
\    "detach" : "<F7>",
\    "set_breakpoint" : "<F10>",
\    "get_context" : "<F11>",
\    "eval_under_cursor" : "<F12>",
\    "eval_visual" : "<F8>",
\}
let g:vdebug_options["path_maps"] = {
\       "/srv/www/runexp": "/home/www/VVV/www/runexp",
\       "/srv/www/woocommerce": "/home/www/VVV/www/woocommerce",
\       "/srv/www/glossary": "/home/www/VVV/www/glossary",
\       "/srv/www/demo": "/home/www/VVV/www/demo"
\}
"  redefine the characters
autocmd VimEnter * sign define breakpt text= texthl=DbgBreakptSign linehl=DbgBreakptLine
autocmd VimEnter * sign define current text= texthl=DbgCurrentSign linehl=DbgCurrentLine
" GutenTags
let g:gutentags_enabled                  = 1
let g:gutentags_generate_on_missing      = 1
let g:gutentags_generate_on_new          = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_define_advanced_commands = 1
let g:gutentags_resolve_symlinks = 1
let g:gutentags_file_list_command = {
      \   'markers': {
      \     '.git': 'git ls-files',
      \     '.hg': 'hg files',
      \   },
\ }
let g:gutentags_ctags_exclude = ['*lock', '*.json', '*.xml', '*.yml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', "*lib/**",
                            \ "*vendor/**", "*tests*",
                            \ '*var/cache*', '*var/log*'
\ ]
let g:gutentags_cache_dir = '~/.vim/tags/'
let g:gutentags_project_root = ['/var/www/VVV/www']
" A better line
let g:lightline = {
    \ 'colorscheme': 'tender',
    \ 'active': {
    \   'left': [['mode', 'paste'], ['readonly', 'filename', 'modified'], ['tagbar', 'gitbranch']],
    \   'right': [['lineinfo'], ['filetype'], [ 'linter_errors', 'linter_warnings', 'linter_ok' ]]
    \ },
    \ 'inactive': {
    \   'left': [['mode', 'paste'], ['readonly', 'filename', 'modified'], ['tagbar', 'gitbranch']],
    \   'right': [['lineinfo'], ['filetype']]
    \ },
    \ 'component': {
    \   'lineinfo': '%l\%L [%p%%]',
    \   'tagbar': '%{tagbar#currenttag("[%s]", "", "f")}',
    \   'gitbranch': '%{&filetype=="help"?"":exists("*fugitive#head")?fugitive#head():""}'
    \ },
    \ 'component_function': {
    \   'filetype': 'MyFiletype',
    \   'fileformat': 'MyFileformat',
    \ },
    \ 'component_expand': {
    \   'linter_warnings': 'lightline#ale#warnings',
    \   'linter_errors': 'lightline#ale#errors',
    \   'linter_ok': 'lightline#ale#ok',
    \ },
    \ 'component_type': {
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \ },
    \ 'subseparator': {
    \   'left': '', 'right': ''
    \ },
    \ 'separator': {
    \   'left': '', 'right': ''
    \ },
    \ 'tabline': {
    \   'left': [ ['tabs'] ],
    \   'right': [ ['close'] ]
    \ }
\ }
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction
function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction
" Home tab
let g:startify_bookmarks = [
            \ {'1': '/var/www/VVV/www/glossary/htdocs/wp-content/plugins/glossary/glossary.php'},
            \ {'2': '/var/www/VVV/www/woocommerce/htdocs/wp-content/plugins/woo-fiscalita-italiana/woo-fiscalita-italiana.php'},
            \ {'3': '/var/www/VVV/www/boilerplate/htdocs/wp-content/plugins/'},
            \ {'4': '/var/www/VVV/www/runexp/htdocs/wp-content/plugins/crm-runningexperience/'},
            \ {'7': '/var/www/VVV/www/lifter/htdocs/'},
            \ {'5': '/home/mte90/Desktop/Prog/GlotDict/'},
            \ {'6': '/home/mte90/Desktop/Prog/Share-Backported/'}
\]
" Emmett
let g:user_emmet_install_global = 1
" PhpDoc
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
" Padawan stuff
let g:padawan#cli = '/opt/padawan/padawan.php/bin/padawan'
let g:padawan#server_command = '/opt/padawan/padawan.php/bin/padawan-server'
"  Run with vim
:call padawan#StopServer()
:call padawan#StartServer()
" Ultisnip
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
" JS smart complete
let g:vimjs#smartcomplete = 1
" Ale linting (installed on system: phpmd, phpcs, coffeelint, sass-lint, htmlhint, prettier)
let g:ale_php_phpcs_standard  = '/home/mte90/Desktop/Prog/CodeatCS/codeat.xml'
let g:ale_php_phpmd_ruleset = 'cleancode,codesize,design,naming,unusedcode'
let g:ale_sign_error = 'EE'
let g:ale_sign_warning = 'WW'
let g:ale_change_sign_column_color = 1
" php
:let g:PHP_autoformatcomment = 1
" Indent lines
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
" Nerdcommenter for... better comments
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
" Align text around a chosen character
let g:lion_squeeze_spaces = 1

" Hotkeys
" Select all
:map <C-a> GVgg
" Save file
:map <C-s> :w <Enter>
" Replace
:map <C-r> :Ack
" Close tab
:map <C-w> :bd <Enter>
" Search in the file
:map <leader>t /
" Search in the project files
:map <leader>a :Rg<space>
" Search all
:map <C-h> :%s/
" Open Folder tab current directory
:map <leader>n :call NERDTreeToggleInCurDir()<CR>
" Open folder tab
:map <C-p> :NERDTreeTabsToggle<CR>
" To search on history with fuzzy
:map <leader>h :History<cr>
" View all the files
:map <leader>b :Buffers<cr>
" Search in all the files
:map <leader>f :Files<cr>
" Object view
:map  <C-t> :TagbarToggle<CR>
" Undo tree tab
:map <leader>H :GundoToggle<CR>
" Fold code open/close with click
:map <expr> <2-LeftMouse> foldclosed(line('.')) == -1 ? 'za' : 'zo'
" Format code
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" Vim PHP format
:map <C-f> <ESC>gg=G<CR>
" Emmett
let g:user_emmet_leader_key='<C-E>' " require also a comma ,
" navigate between errors
:map <silent> <C-k> <Plug>(ale_previous_wrap)
:map <silent> <C-j> <Plug>(ale_next_wrap)
" Toggle comments
:map <C-d> <plug>NERDCommenterToggle<CR>
" Align =
:map <C-=> <ESC>gl=<CR>
" Remove spaces at the end of lines
nnoremap <silent> ,<Space> :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR>
" Deoplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" Append ; to the end of the line -> CTRL+C
:map <C-c> :call setline('.', getline('.') . ';')<CR>

" C = Ctrl
" leader = \
" <leader>el for error_log/console.log
" On visual mode . repeat the last thing you done in edit mode
" * highlitght the word where it is your cursor
" :e and write the path
" tab for autocomplete of snippet
" :vsplit file to open a vertical window
" :hide close current window but not file
" Copy y
" Paste p
" Cut d
" Back u

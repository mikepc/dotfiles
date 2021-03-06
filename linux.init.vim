
call plug#begin("~/.vim/plugged")
	Plug 'zchee/nvim-go', { 'do': 'make'}
	Plug 'junegunn/fzf'
	Plug 'flazz/vim-colorschemes'
	Plug 'itmammoth/doorboy.vim'
	Plug 'eugen0329/vim-esearch'
	Plug 'Shougo/context_filetype.vim'
  Plug 'vim-airline/vim-airline-themes'

" system {{{
  Plug 'itmammoth/doorboy.vim'
  Plug 'eugen0329/vim-esearch'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-unimpaired'
  Plug 'AndrewRadev/switch.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tpope/vim-surround'
  Plug 'tyru/caw.vim'
  Plug 'junegunn/vim-easy-align'
  Plug 'tmux-plugins/vim-tmux'
  Plug 'Shougo/context_filetype.vim'
  Plug 'mhinz/vim-sayonara'
  Plug 'mattn/webapi-vim'
  Plug 'mattn/gist-vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'MartinLafreniere/vim-PairTools'
  Plug 'sjl/vitality.vim'
  Plug 'simnalamburt/vim-mundo'
" }}}
" UI {{{
  Plug 'Shougo/defx.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline'
  Plug 'rakr/vim-one'
  Plug 'morhetz/gruvbox'
  Plug 'patstockwell/vim-monokai-tasty'
  Plug 'mhartington/oceanic-next'
  " Plug 'RRethy/vim-illuminate'
  Plug 'lambdalisue/fila.vim'
" }}}
" code style {{{
  " Plug 'neomake/neomake'
  Plug 'sbdchd/neoformat'
  Plug 'editorconfig/editorconfig-vim'
" }}}
" completion {{{
  Plug 'Shougo/deoplete.nvim'
  Plug 'tweekmonster/deoplete-clang2'
  Plug 'artur-shaik/vim-javacomplete2'
  Plug 'Shougo/neco-vim'
  Plug 'Shougo/neoinclude.vim'
  Plug 'Shougo/echodoc.vim'
" }}}

" git {{{{
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'sgeb/vim-diff-fold'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/gv.vim'
  Plug 'lambdalisue/gina.vim'
" }}}}
" Database {{{{
  Plug 'tpope/vim-dadbod'
" }}}}
" snippets {{{
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'honza/vim-snippets'
  Plug 'gfontenot/vim-xcode'
" }}}

" markdown {{{
"  Plug 'tpope/vim-markdown'
  Plug 'dhruvasagar/vim-table-mode'
"  Plug 'nelstrom/vim-markdown-folding', {'do': 'markdown'}
  Plug 'rhysd/vim-grammarous'
  Plug 'junegunn/goyo.vim'
  Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app & npm install'}
  Plug 'kurocode25/mdforvim'

"  Plug 'ujihisa/neco-look'
" }}}

" python{{{
  Plug 'zchee/deoplete-jedi'
  Plug 'davidhalter/jedi-vim'
  Plug 'tmhedberg/SimpylFold'
" }}}
" javascript {{{
  Plug 'othree/yajs.vim'
  Plug 'mxw/vim-jsx'
  Plug 'heavenshell/vim-jsdoc'
  Plug 'elzr/vim-json'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'Quramy/vison'
" }}}
" html {{{
  Plug 'othree/html5.vim'
  Plug 'mattn/emmet-vim'
  Plug 'valloric/MatchTagAlways'
  Plug 'posva/vim-vue'
  Plug 'skwp/vim-html-escape'
  Plug 'pedrohdz/vim-yaml-folds'
" }}}
" css {{{
  Plug 'hail2u/vim-css3-syntax'
  Plug 'ap/vim-css-color'
  Plug 'ncm2/ncm2-cssomni'
" }}}

" go {{{
  Plug 'fatih/vim-go'
  Plug 'zchee/deoplete-go', {'do': 'make'}
  Plug 'sebdah/vim-delve'
" }}}
" Has to be last according to docs
  Plug 'ryanoasis/vim-devicons'
 " }}}
 "
call plug#end()
set number


let mapleader = ','

" System Settings  ----------------------------------------------------------{{{

"  source ~/.local.vim
  if exists('g:GuiLoaded')
    Guifont Hasklig:h15
  endif
" Neovim Settings
  set termguicolors
  set mouse=a
  " let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
  set clipboard+=unnamedplus
  set pastetoggle=<f6>
  set nopaste
  set hidden
  autocmd BufWritePre * %s/\s\+$//e
  set noshowmode
  set noswapfile
  filetype on
  set  number
  set numberwidth=1
  set tabstop=2 shiftwidth=2 expandtab
  set conceallevel=0
  set virtualedit=
  set wildmenu
  set laststatus=2
  set wrap linebreak nolist
  set wildmode=full
  set autoread
  set updatetime=500
  set fillchars+=vert:│
  " set numberwidth=5
" leader is ,
  let mapleader = ','
  set undofile
  set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
 autocmd BufReadPost *
             \ if line("'\"") > 0 && line ("'\"") <= line("$") |
             \   exe "normal! g'\"" |
             \ endif
             " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  set complete=.,w,b,u,t,k
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
  set formatoptions+=t
  set inccommand=nosplit
  set shortmess=atIc
  set isfname-==
  let g:indentLine_color_gui = '#343d46'
  " set scrolloff=999
  " set sidescrolloff=999
  " let g:indentLine_char="⎸"

  let g:clipboard = {
  \ 'name': 'xclip',
  \ 'copy': {
  \    '+': 'xclip -selection clipboard',
  \    '*': 'xclip -selection clipboard',
  \  },
  \ 'paste': {
  \    '+': 'xclip -selection clipboard -o',
  \    '*': 'xclip -selection clipboard -o',
  \ },
  \ 'cache_enabled': 0,
  \ }
" }}}

" System mappings  ----------------------------------------------------------{{{

" No need for ex mode
  nnoremap Q <nop>
  vnoremap // y/<C-R>"<CR>
" recording macros is not my thing
  map q <Nop>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
" Navigate between display lines
  nnoremap <silent><expr> k      v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> j      v:count == 0 ? 'gj' : 'j'
  vnoremap <silent><expr> k      v:count == 0 ? 'gk' : 'k'
  vnoremap <silent><expr> j      v:count == 0 ? 'gj' : 'j'
  nnoremap <silent><expr> <Up>   v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> <Down> v:count == 0 ? 'gj' : 'j'

  noremap  <silent> <Home> g<Home>
  noremap  <silent> <End>  g<End>
  inoremap <silent> <Home> <C-o>g<Home>
  inoremap <silent> <End>  <C-o>g<End>
" copy current files path to clipboard
  nmap cp :let @+= expand("%") <cr>
" Neovim terminal mapping
" terminal 'normal mode'
  tmap <esc> <c-\><c-n><esc><cr>
" exit insert, dd line, enter insert
  inoremap <c-d> <esc>ddi
  noremap H ^
  noremap L g_
  noremap J 5j
  noremap K 5k
  " nnoremap K 5k
" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just swap the mapping
" nnoremap : ;
" give it a try and you will like it
  nnoremap ; :
  inoremap <c-f> <c-x><c-f>
" Copy to osx clipboard
  vnoremap <C-c> "*y<CR>
  vnoremap y "*y<CR>
  noremap Y y$
  vnoremap y myy`y
  vnoremap Y myY`y
  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  nnoremap <leader>d "_d
  vnoremap <leader>d "_d
  vnoremap <c-/> :TComment<cr>
  nnoremap <silent> <esc> :noh<cr>
  nnoremap <leader>e :call <SID>SynStack()<CR>
  function! <SID>SynStack()
    if !exists("*synstack")
      return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
  endfunc

  function! s:PlaceholderImgTag(size)
    let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
    let [width,height] = split(a:size, 'x')
    execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
    endfunction
  command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)
  vnoremap <leader>ga <Plug>(EasyAlign)

"}}}"
"
" Themes, Commands, etc  ----------------------------------------------------{{{
  syntax on
  let g:one_allow_italics = 1
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  let g:vim_monokai_tasty_italic = 1
  let g:Illuminate_ftblacklist = ['nerdtree', 'gitconfig','gina-blame', 'defx', 'fugitive', 'git']

  set list
  set listchars=tab:‣\ ,trail:·
   colorscheme one
   set background=dark

"}}}

" Code formatting -----------------------------------------------------------{{{

" ,f to format code, requires formatters: read the docs
"
  noremap <silent> <leader>f :Neoformat<CR>
  let g:standard_prettier_settings = {
              \ 'exe': 'prettier',
              \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
              \ 'stdin': 1,
              \ }
  let g:neoformat_vue_prettier = {
              \ 'exe': 'vue-formatter',
              \ 'stdin': 1,
        \}
              " \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
    let g:neoformat_zsh_shfmt = {
              \ 'exe': 'shfmt',
              \ 'args': ['-i ' . shiftwidth()],
              \ 'stdin': 1,
              \ }
  let g:neoformat_enabled_zsh = ['shfmt']

" }}}

" Fold, gets it's own section  ----------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
      let fillcharcount = windowwidth - len(line)
      " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
      return line . '…'. repeat(" ",fillcharcount)
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  " autocmd FileType vim setlocal fdc=1
  set foldlevel=99

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  let g:xml_syntax_folding = 1
  autocmd FileType xml setl foldmethod=syntax

  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  " autocmd FileType javascript,typescript,json setl foldmethod=syntax
  autocmd FileType javascript,typescript,typescript.tsx,json setl foldmethod=syntax

" }}}

" Git -----------------------------------------------------------------------{{{

  set signcolumn=yes
  let g:conflict_marker_enable_mappings = 0
  let g:gitgutter_sign_added = '│'
  let g:gitgutter_sign_modified = '│'
  let g:gitgutter_sign_removed = '│'
  let g:gitgutter_sign_removed_first_line = '│'
  let g:gitgutter_sign_modified_removed = '│'
  let g:gina#command#blame#formatter#format="%in (%au) %ti"
  autocmd FileType fugitive call s:fugitive_settings()
  function! s:fugitive_settings() abort
    setlocal nonumber
  endfunction
" }}}

" Themes, Commands, etc  ----------------------------------------------------{{{
  syntax on
  let g:one_allow_italics = 1
  let g:oceanic_next_terminal_bold = 1
  let g:oceanic_next_terminal_italic = 1
  let g:vim_monokai_tasty_italic = 1
  " set pumblend=50
  " if strftime('%H') >= 7 && strftime('%H') < 14
  "   colorscheme OceanicNextLight
  "   let g:airline_theme='oceanicnextlight'
  " else
    colorscheme OceanicNext
    let g:airline_theme='oceanicnext'
  " endif
  " colorscheme vim-monokai-tasty
  let g:Illuminate_ftblacklist = ['nerdtree', 'gitconfig','gina-blame', 'defx', 'fugitive', 'git']

  set list
  set listchars=tab:‣\ ,trail:·
  " colorscheme one
  " set background=dark

"}}}

" Code formatting -----------------------------------------------------------{{{

" ,f to format code, requires formatters: read the docs
"
  noremap <silent> <leader>f :Neoformat<CR>
  let g:standard_prettier_settings = {
              \ 'exe': 'prettier',
              \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
              \ 'stdin': 1,
              \ }
  let g:neoformat_vue_prettier = {
              \ 'exe': 'vue-formatter',
              \ 'stdin': 1,
        \}
              " \ 'args': ['--stdin', '--stdin-filepath', '%:p', '--single-quote'],
    let g:neoformat_zsh_shfmt = {
              \ 'exe': 'shfmt',
              \ 'args': ['-i ' . shiftwidth()],
              \ 'stdin': 1,
              \ }
  let g:neoformat_enabled_zsh = ['shfmt']

" }}}

" Defx ----------------------------------------------------------------------{{{

  map <silent> - :call OpenDefx()<cr>
  let g:defx_open_path = getcwd()
  function! OpenDefx() abort
    if isdirectory(expand('%:p:h'))
      let g:defx_open_path = expand('%:p:h')
    endif
    execute('Defx
      \ -columns=git:icons:filename:type
      \ -buffer-name=""
      \ -show_ignored_files
      \ -split=vertical
      \ -winwidth=45
      \ -direction=topleft
      \ -toggle
      \ -resume
      \ `g:defx_open_path`')
  endfunction

  " \ if isdirectory(expand('%:p:h')) | `expand('%:p:h')` | endif
  "`expand('%:p:h')` -search=`expand('%:p')`
  autocmd FileType defx call s:defx_my_settings()
  function! s:defx_my_settings() abort
    IndentLinesDisable
    setl nospell
    setl signcolumn=no
    setl nonumber
    nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
    nnoremap <silent><buffer><expr> C defx#do_action('copy')
    nnoremap <silent><buffer><expr> P defx#do_action('paste')
    nnoremap <silent><buffer><expr> M defx#do_action('rename')
    nnoremap <silent><buffer><expr> D defx#do_action('remove_trash')
    nnoremap <silent><buffer><expr> A defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> U defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select')
    nnoremap <silent><buffer><expr> R defx#do_action('redraw')

  endfunction

  let g:defx_git#show_ignored = 0
  let g:defx_git#raw_mode = 1
  let g:defx_git#column_length =2

  hi def link Defx_filename_directory NERDTreeDirSlash
  hi def link Defx_git_Modified Special
  hi def link Defx_git_Staged Function
  hi def link Defx_git_Renamed Title
  hi def link Defx_git_Unmerged Label
  hi def link Defx_git_Untracked Tag
  hi def link Defx_git_Ignored Comment
  let g:defx_icons_parent_icon = ""


  " let g:fila#renderer#default#expanded_symbol= "+ "
  " let g:fila#renderer#default#root_symbol = " "
  " let g:fila#renderer#default#leaf_symbol = " "

  " map <silent> - :FilaDrawer<cr>
  let g:fila#viewer#skip_default_mappings = 1
  autocmd FileType fila call s:fila_settings()
  function! s:fila_settings() abort
    IndentLinesDisable
    setl nospell
    setl signcolumn=no
    setl nonumber
    nmap <buffer><nowait> <Backspace> <Plug>(fila-action-leave)
    nmap <buffer><nowait> <C-h>       <Plug>(fila-action-leave)
    nmap <buffer><nowait> <Return>    <Plug>(fila-action-expand-or-open)
    " nmap <buffer><nowait> <C-m>       <Plug>(fila-action-enter-or-open)
    nmap <buffer><nowait> R        <Plug>(fila-action-reload)
    nmap <buffer><nowait> l           <Plug>(fila-action-expand-or-open)
    nmap <buffer><nowait> h           <Plug>(fila-action-collapse)
    nmap <buffer><nowait> <space>           <Plug>(fila-action-mark-toggle)
  endfunction
  let g:fila#renderer#default#leading = " "
  let g:fila#renderer#default#root_symbol = "   "
  let g:fila#renderer#default#leaf_symbol = "  "
  let g:fila#renderer#default#expanded_symbol = " ▾ "
  let g:fila#renderer#default#collapsed_symbol = " ▸ "
  let g:fila#renderer#default#marked_symbol = " "
  let g:fila#renderer#default#unmarked_symbol = " "

"  }}}
"
"
" Nvim terminal -------------------------------------------------------------{{{

  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  autocmd BufEnter term://* startinsert
  autocmd TermOpen * set bufhidden=hide

" }}}


" Vim-Devicons --------------------------------------------------------------{{{

  let g:NERDTreeGitStatusNodeColorization = 1
  " 
  let g:webdevicons_enable_denite = 0
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  let g:DevIconsEnableFoldersOpenClose = 1
  let g:WebDevIconsOS = 'Darwin'
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''

" }}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_completed_snippet=0
  let g:neosnippet#enable_snipmate_compatibility=0
  " let g:neosnippet#enable_conceal_markers=0
  " let g:neosnippet#snippets_directory='~/GitHub/ionic-snippets'
  " let g:neosnippet#expand_word_boundary = 1
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

" " SuperTab like snippets behavior.
"   imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)"
"   \: pumvisible() ? "\<C-n>" : "\<TAB>"
"   smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"   \ "\<Plug>(neosnippet_expand_or_jump)"
"   \: "\<TAB>"

"}}}

" Deoplete ------------------------------------------------------------------{{{

  " enable deoplete
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#auto_complete_delay = 0
  let g:echodoc_enable_at_startup=1
  let g:echodoc#type="virtual"
  set splitbelow
  set completeopt+=menuone,noinsert,noselect
  set completeopt-=preview
  autocmd CompleteDone * pclose

  function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete=2
  endfunction
  function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete=0
  endfunction
  let g:deoplete#file#enable_buffer_path=1
  " call deoplete#custom#source('buffer', 'mark', 'ℬ')
  " call deoplete#custom#source('tern', 'mark', '')
  " call deoplete#custom#source('omni', 'mark', '⌾')
  " call deoplete#custom#source('file', 'mark', '')
  " call deoplete#custom#source('jedi', 'mark', '')
  " call deoplete#custom#source('neosnippet', 'mark', '')
  " call deoplete#custom#source('LanguageClient', 'mark', '')
  " call deoplete#custom#source('typescript',  'rank', 630)
  " call deoplete#custom#source('_', 'matchers', ['matcher_cpsm'])
  " call deoplete#custom#source('_', 'sorters', [])
  let g:deoplete#omni_patterns = {
        \ 'html': '',
        \ 'css': '',
        \ 'scss': ''
        \}
  function! Preview_func()
    if &pvw
      setlocal nonumber norelativenumber
     endif
  endfunction
  autocmd WinEnter * call Preview_func()
  let g:deoplete#ignore_sources = {'_': ['around', 'buffer', 'member' ]}

  " let g:deoplete#enable_debug = 1
  " call deoplete#enable_logging('WARN', 'deoplete.log')
  " call deoplete#custom#source('typescript', 'is_debug_enabled', 1)
"}}}

" Emmet customization -------------------------------------------------------{{{

" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return emmet#expandAbbrIntelligent("\<tab>")
    " return "\<C-y>,"
  endif
" return a regular tab character
  return "\<tab>"
  endfunction
  " let g:user_emmet_expandabbr_key='<Tab>'
  " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

  autocmd FileType html,css,scss,typescript.tsx imap <silent><buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 0
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,scss,typescript.tsx EmmetInstall
"}}}

" Language Client -----------------------------------------------------------{{{

  " let g:LanguageClient_diagnosticsEnable = 1
  " let g:LanguageClient_serverCommands = {
  "  \ 'reason': ['ocaml-language-server', '--stdio'],
  "  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  "  \ 'typescript': ['typescript-language-server', '--stdio'],
  "  \ }
    " \ 'scss': ['css-languageserver', '--stdio'],
    " \ 'css': ['css-languageserver', '--stdio'],
    " \ 'html': ['html-languageserver','--stdio'],
    " \ 'typescript': ['typescript-language-server', '--stdio']
  " nmap <silent> gd <Plug>(coc-definition)
  " nmap <silent> gy <Plug>(coc-type-definition)
  " nmap <silent> gi <Plug>(coc-implementation)
  " nmap <silent> gr <Plug>(coc-references)

  " map <silent> <leader>gd :TSDoc <cr>
  " map <silent> <leader>gt :TSType <cr>
  " map <silent> <leader>gtd :call CocActionAsync('jumpTypeDefinition')<cr>
  " map <silent> <leader>@ :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
  " map <silent> <leader># :Denite -buffer-name=TSWorkspaceSymbol TSWorkspaceSymbol <cr>
  " nnoremap <m-Enter> :call CocActionAsync('codeAction',     '')<CR>
  hi default CocUnderline   cterm=undercurl gui=undercurl

"}}}
"
" Navigate between vim buffers and tmux panels ------------------------------{{{

  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
  tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>

"}}}
" Navigate between vim buffers and tmux panels ------------------------------{{{

  let g:tmux_navigator_no_mappings = 1
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
  nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
  tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>

"}}}

" vim-airline ---------------------------------------------------------------{{{

  let g:webdevicons_enable_airline_statusline = 1
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_powerline_fonts = 0
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#mike#enabled = 0
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
  let g:airline_symbols.branch = ''
  " cnoreabbrev <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'x' : 'bd'
  cnoreabbrev x Sayonara
  " cnoreabbrev x bd
  tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
  nmap <silent><leader>, :bnext<CR>
  tmap <leader>, <C-\><C-n>:bnext<cr>
  nmap <silent><leader>. :bprevious<CR>
  tmap <leader>. <C-\><C-n>:bprevious<CR>
  tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
  tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
  tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
  tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
  tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
  tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
  tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
  tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
  tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  let g:airline#extensions#branch#format = 0
  let g:airline_detect_spelllang=0
  let g:airline_detect_spell=0
  let g:airline#extensions#hunks#enabled = 0
  let g:airline#extensions#wordcount#enabled = 0
  let g:airline#extensions#whitespace#enabled = 0
  let g:airline_section_c = '%f%m'
  let g:airline_section_x = ''
  " let g:airline_section_y = '%{WebDevIconsGetFileFormatSymbol()}'
  let g:airline_section_y = ''
  " let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0
  let g:airline_section_z = '%l:%c'
  " let g:airline_section_z = '%{LineNoIndicator()} :%2c'
  let g:airline#parts#ffenc#skip_expected_string=''
  let g:airline_mode_map = {
      \ '__' : '',
      \ 'c'  : '',
      \ 'i'  : '',
      \ 'ic' : '',
      \ 'ix' : '',
      \ 'n'  : '',
      \ 'ni' : '',
      \ 'no' : '',
      \ 'R'  : '',
      \ 'Rv' : '',
      \ 's'  : '',
      \ 'S'  : '',
      \ 't'  : '',
      \ 'v'  : '',
      \ 'V'  : '',
      \ '' : '',
      \ }

  let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 ',
        \}

"}}}
"
" Linting -------------------------------------------------------------------{{{

  " call neomake#configure#automake({
  "\ 'BufWritePost': {'delay': 0},
  "\ 'BufWinEnter': {},
  "\ 'TextChanged': {},
  "\ 'InsertLeave': { },
  "\ }, 1000)
  " call neomake#configure#automake({
  " \ 'BufWritePost': {},
  " \ }, 0)

  let g:ale_sign_error = '•'
  let g:ale_sign_warning = '•'
  let g:airline#extensions#ale#error_symbol='• '
  let g:airline#extensions#ale#warning_symbol='•  '
  let g:airline#extensions#neomake#error_symbol='• '
  let g:airline#extensions#neomake#warning_symbol='•  '

  " let g:neomake_typescript_tsc_tempfile_enabled = 0
  " let g:neomake_typescript_tslint_tempfile_enabled = 0
  let g:neomake_warning_sign = {'text': '•'}
  let g:neomake_error_sign = {'text': '•'}
  let g:neomake_info_sign = {'text': '•'}
  let g:neomake_message_sign = {'text': '•'}

  hi link ALEError SpellBad
  hi link ALEWarning SpellBad
  " Write this in your vimrc file
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0
  " let g:neomake_verbose = 3
"}}}

" MarkDown ------------------------------------------------------------------{{{

  noremap <leader>TM :TableModeToggle<CR>
  let g:table_mode_corner="|"
  let g:markdown_fold_override_foldtext = 0
  let g:neomake_markdown_proselint_maker = {
      \ 'errorformat': '%W%f:%l:%c: %m',
      \ 'postprocess': function('neomake#postprocess#generic_length'),
      \}
  let g:neomake_markdown_enabled_makers = ['alex', 'proselint']
  let g:markdown_syntax_conceal = 0
  let g:mkdp_auto_start = 0
  let g:neoformat_markdown_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_markdown = ['prettier']

"}}}

" MultiCursor ---------------------------------------------------------------{{{

  let g:multi_cursor_exit_from_visual_mode=0
  let g:multi_cursor_exit_from_insert_mode=0
"}}}

" Javascript ----------------------------------------------------------------{{{
" set nobinary
  " let $NVIM_NODE_LOG_FILE='nvim-node.log'
  " let $NVIM_NODE_LOG_LEVEL='warn'
  " let $NVIM_NODE_HOST_DEBUG=1

  " autocmd FileType typescript.tsx setlocal commentstring=
  " call tcomment#type#Define('typescript.tsx', '{/* %s */}')
  " call tcomment#type#Define('typescript.tsx_block',       '{/* %s */}')
  " call tcomment#type#Define('typescript.tsx_inline',      '{/* %s */}')
  let g:neoformat_javascript_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_javascript = ['prettier']
  autocmd FileType vue syntax sync fromstart

  let g:jsx_ext_required = 0
  let g:neomake_javascript_enabled_makers = []
  let g:jsx_ext_required = 1
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:jsdoc_return=0
  let g:jsdoc_return_type=0



  let g:neoformat_json_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_json = ['prettier']
  let g:vim_json_syntax_conceal = 0

" }}}

" Java ----------------------------------------------------------------------{{{

  autocmd FileType java setlocal omnifunc=javacomplete#Complete
  " let g:deoplete#sources#clang#libclang_path="/usr/local/Cellar/llvm/HEAD-74479e8/lib/libclang.dylib"
  " let g:deoplete#sources#clang#clang_header="/usr/bin/clang"
"}}}

" HTML ----------------------------------------------------------------------{{{

  let g:neoformat_enabled_vue = ['prettier']
  let g:neomake_html_enabled_makers = []
  let g:neoformat_enabled_html = ['htmlbeautify']

  " let g:neoformat_html_prettier = g:standard_prettier_settings
  " let g:neoformat_enabled_html = ['prettier']
" }}}

" Go ------------------------------------------------------------------------{{{

  let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

  function! s:build_go_files()
    let l:file = expand('%')
    if l:file =~# '^\f\+_test\.go$'
      call go#test#Test(0, 1)
    elseif l:file =~# '^\f\+\.go$'
      call go#cmd#Build(0)
    endif
  endfunction

  let g:go_list_type = "quickfix"
  let g:go_fmt_command = "goimports"
  let g:go_fmt_fail_silently = 1

  " let g:syntastic_go_checkers = ['govet']
  " let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

  let g:go_highlight_types = 1
  let g:go_highlight_fields = 1
  let g:go_highlight_functions = 1
  let g:go_highlight_methods = 1
  let g:go_highlight_operators = 1
  let g:go_highlight_build_constraints = 1
  let g:go_highlight_structs = 1
  let g:go_highlight_generate_tags = 1
  let g:go_highlight_space_tab_error = 0
  let g:go_highlight_array_whitespace_error = 0
  let g:go_highlight_trailing_whitespace_error = 0
  let g:go_highlight_extra_types = 1

  autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

  "augroup completion_preview_close
  "  autocmd!
  "  if v:version > 703 || v:version == 703 && has('patch598')
  "    autocmd CompleteDone * if !&previewwindow && &completeopt =~ 'preview' | silent! pclose | endif
  "  endif
  "augroup END

  augroup go

      au!
    au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
    au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
    au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
    au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

    au FileType go nmap <Leader>dd <Plug>(go-def-vertical)
    au FileType go nmap <SLeader>dv <Plug>(go-doc-vertical)
    au FileType go nmap <Leader>db <Plug>(go-doc-browser)

    au FileType go nmap <leader>r  <Plug>(go-run)
    au FileType go nmap <leader>g <Plug>(go-test)
    au FileType go nmap <Leader>i <Plug>(go-info)
    au FileType go nmap <silent> <Leader>l <Plug>(go-metalinter)
    au FileType go nmap <C-g> :GoDecls<cr>
    au FileType go nmap <leader>dr :GoDeclsDir<cr>
    au FileType go imap <C-g> <esc>:<C-u>GoDecls<cr>
    au FileType go imap <leader>dr <esc>:<C-u>GoDeclsDir<cr>
    au FileType go nmap <leader>rb :<C-u>call <SID>build_go_files()<CR>

    au FileType go noremap <Leader>gb :GoBuild<CR>
  augroup END


"}}}

" CSS -----------------------------------------------------------------------{{{

  let g:neoformat_scss_prettier = g:standard_prettier_settings
  let g:neoformat_enabled_scss = ['prettier']
  let g:neomake_scss_enabled_makers = ['stylelint']

"}}}

" Lua -----------------------------------------------------------------------{{{

"}}}

" Python --------------------------------------------------------------------{{{

  let g:python_host_prog = '/usr/bin/python2'
  let g:loaded_python_provider = 0
  let g:python3_host_prog = '/usr/bin/python3.7'
  let $NVIM_PYTHON_LOG_FILE='nvim-python.log'
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#documentation_command = "<leader>k"
  let g:jedi#completions_enabled = 0
  let g:jedi#force_py_version=3
" }}}

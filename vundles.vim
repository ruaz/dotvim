"
" dotphiles : https://github.com/dotphiles/dotphiles
"
" Essential vim plugins!
"
" Authors:
"   Ben O'Hara <bohara@gmail.com>
"

" Vundle itself
Plugin 'gmarik/vundle'

" General
if count(g:vundles, 'general')
  Plugin 'altercation/vim-colors-solarized'
  " Plugin 'scrooloose/nerdtree'
  " Plugin 'chriskempson/base16-vim'
  Plugin 'YankRing.vim'
   let g:yankring_history_dir = $HOME.'/.vim/'
   let g:yankring_history_file = '.yankring_history'
  Plugin 'tpope/vim-repeat'
  Plugin 'AutoClose'
  Plugin 'kien/ctrlp.vim'
  " Plugin 'jistr/vim-nerdtree-tabs'
  Plugin 'sudo.vim'
  Plugin 'ntpeters/vim-better-whitespace'
  " Plugin 'mbbill/undotree'
  " Plugin 'mhinz/vim-signify' " same as vim-gitgutter but for all vcs

  " Plugin 'Raimondi/delimitMate'
  Plugin 'jiangmiao/auto-pairs'
  " Plugin 'AutoClose'

  Plugin 'bling/vim-airline'
  Plugin 'tpope/vim-surround'
  Plugin 'Lokaltog/vim-easymotion'
endif

if count(g:vundles, 'git')
  if executable('git')
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
  endif
endif

if count(g:vundles, 'hg') " mercurial
 if executable('hg')
    Plugin 'k-takata/hg-vim'
  endif
endif
" General Programming
if count(g:vundles, 'programming')
  Plugin 'godlygeek/tabular'
  Plugin 'tomtom/tcomment_vim'
  if executable('ack')
    Plugin 'mileszs/ack.vim'
  endif
  if v:version > 700
    Plugin 'scrooloose/syntastic'
    let g:syntastic_auto_loc_list=0
    if executable('ctags')
      Plugin 'majutsushi/tagbar'
    endif
  endif
endif

if count(g:vundles, 'completion')
  " Plugin 'Shougo/neocomplcache'
  " Plugin 'Shougo/neosnippet'
  " Plugin 'Shougo/neosnippet-snippets'
  " Plugin 'scrooloose/snipmate-snippets'
  " Plugin 'Indent-Guides'
  Plugin 'honza/vim-snippets'
  Plugin 'ervandew/supertab'
  Plugin 'Valloric/YouCompleteMe' " autocomplete
      " make YCM compatible with UltiSnips (using supertab)
      let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
      let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
      let g:SuperTabDefaultCompletionType = '<C-n>'

  Plugin 'SirVer/ultisnips' " snippets engine
      " better key bindings for UltiSnipsExpandTrigger
      let g:UltiSnipsExpandTrigger = "<tab>"
      let g:UltiSnipsJumpForwardTrigger = "<tab>"
      let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
      " If you want :UltiSnipsEdit to split your window.
      let g:UltiSnipsEditSplit="vertical"
endif

" PHP
if count(g:vundles, 'php')
  Plugin 'spf13/PIV'
endif

" Python
if count(g:vundles, 'python')
  Plugin 'hynek/vim-python-pep8-indent'
  let g:syntastic_python_flake8_args='--ignore=E501'
endif

" Javascript
if count(g:vundles, 'javascript')
  Plugin 'leshill/vim-json'
  Plugin 'pangloss/vim-javascript'
  Plugin 'othree/javascript-libraries-syntax.vim'
endif

" Node
if count(g:vundles, 'node')
  Plugin 'moll/vim-node'
    autocmd User Node
      \ if &filetype == "javascript" |
      \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
      \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
      \ endif
endif

" Backbone
if count(g:vundles, 'backbone')
  Plugin 'mklabs/vim-backbone'
  let g:used_javascript_libs = 'underscore,backbone'
endif

" Angular
if count(g:vundles, 'angular')
  Plugin 'burnettk/vim-angular'
  let g:used_javascript_libs = 'angularjs, angularui, requirejs'
  Plugin 'matthewsimo/angular-vim-snippets'
endif

" HTML
if count(g:vundles, 'html')
  Plugin 'HTML-AutoCloseTag'
  Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
  " Plugin 'mustache/vim-mustache-handlebarsj'
endif


" LESS
if count(g:vundles, 'less')
  Plugin 'groenewege/vim-less'
endif

" Ruby
if count(g:vundles, 'ruby')
  Plugin 'tpope/vim-rails'
endif

" Misc
if count(g:vundles, 'misc')
  " Plugin 'tpope/vim-markdown'
  Plugin 'spf13/vim-preview'
  " Plugin 'tpope/vim-cucumber'
  " Plugin 'markcornick/vim-vagrant'
  " Plugin 'Puppet-Syntax-Highlighting'
  " Plugin 'ekalinin/Dockerfile.vim'
  if v:version > 701
    " Plugin 'zhaocai/GoldenView.Vim'
  endif
  " let g:goldenview__enable_default_mapping=0
endif

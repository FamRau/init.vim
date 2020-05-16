"------------------------------------------------------------------------------
" init.vim for Neovim
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Plugins 
"     using vim-Plug https://github.com/junegunn/vim-plug
"------------------------------------------------------------------------------

call plug#begin(stdpath('data') . '/plugged')

" asynchronous completion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Nerdtree 
Plug 'scrooloose/nerdtree'

" taglist
Plug 'vim-scripts/taglist.vim'

" Vim-Signature to show mark
Plug 'kshenoy/vim-signature' 

" Tasklist to show all 
Plug 'vim-scripts/TaskList.vim'

" Auto Pairs 
Plug 'jiangmiao/auto-pairs'

" code auto-format plugin neoformat 
Plug 'sbdchd/neoformat'

" Line Intend
Plug 'Yggdroot/indentLine'

" Ale Code Linting
Plug 'dense-analysis/ale'

" ctrpl Search tool
Plug 'ctrlpvim/ctrlp.vim'

"Highlight yank area
Plug 'machakann/vim-highlightedyank'

" One Theme and vim-Airline
Plug 'rakr/vim-one'
Plug 'sonph/onehalf'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'

" Markdown
Plug 'plasticboy/vim-markdown'

" vim -pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" vim -pencil
Plug 'reedes/vim-pencil'

" Goyo
Plug 'junegunn/goyo.vim'

" Language Tool
Plug 'dpelle/vim-LanguageTool'

" quick-scope higlight unique char using f, F
Plug 'unblevable/quick-scope'

" Automatically clear search highlights after you move your cursor.
Plug 'haya14busa/is.vim'

" csv 
Plug 'chrisbra/csv.vim'


call plug#end()


"------------------------------------------------------------------------------
" Basic Settings 
"    Research any of these by running :help <setting>
"------------------------------------------------------------------------------

set nocompatible
syntax enable
filetype plugin indent on
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set expandtab
set hidden
set encoding=utf-8
set hlsearch
set history=1000
set number
set relativenumber
set scrolloff=7
set wildmenu
set foldcolumn=1
set clipboard=unnamed
set nospell
set breakindent
set formatoptions=1
set lbr
set undofile
set undodir=$HOME/.vim/vimundo
set undolevels=1000
let mapleader=","
set termguicolors
set splitright 
set splitbelow


"------------------------------------------------------------------------------
" Color Settings
" -----------------------------------------------------------------------------

" colorscheme 
colorscheme one

" background
set background=dark

" airline_theme
let g:airline_theme='one'


"------------------------------------------------------------------------------
" Basic Mappings
" -----------------------------------------------------------------------------

" remove search higlight with enter
nnoremap <CR> :noh<CR><CR>
set guifont=Monospace\ 1666666

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Terminal
" Maps ESC to exit terminal's insert mode
if has('nvim')
    tnoremap <silent> <Esc> <C-\><C-n>
endif

" Maps ctrl-c + h to open a new horizontal split with a terminal
nnoremap <C-c>h :sp +terminal<CR>

" Maps ctrl-c + v to open a new vertical split with a terminal
nnoremap <C-c>v :vsp +terminal<CR>

augroup neovim_terminal
    autocmd!

    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert

    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
augroup END

"------------------------------------------------------------------------------
" Specific Plugin Settings
"------------------------------------------------------------------------------

"Autocomplete deoplete-jedi
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>" 

" Ale
let g:ale_cache_executable_check_failures = v:null
let g:ale_change_sign_column_color = 0
let g:ale_command_wrapper = ''
let g:ale_completion_delay = v:null
let g:ale_completion_enabled = 0
let g:ale_completion_max_suggestions = v:null
let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_format = '%code: %%s'
let g:ale_echo_msg_info_str = 'Info'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_fixers = {'ruby': ['rubocop'], 'javascript': ['prettier']}
let g:ale_history_enabled = 1
let g:ale_history_log_output = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_delay = 200
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_linter_aliases = {}
let g:ale_linters = {'ruby': ['rubocop'], 'javascript': ['prettier']}
let g:ale_linters_explicit = 0
let g:ale_list_vertical = 0
let g:ale_list_window_size = 10
let g:ale_loclist_msg_format = '%code: %%s'
let g:ale_lsp_root = {}
let g:ale_max_buffer_history_size = 20
let g:ale_max_signs = -1
let g:ale_maximum_file_size = v:null
let g:ale_open_list = 0
let g:ale_pattern_options = v:null
let g:ale_pattern_options_enabled = v:null
let g:ale_set_balloons = 1
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = 'xx'
let g:ale_sign_info = '!!'
let g:ale_sign_offset = 1000000
let g:ale_sign_style_error = 'xx'
let g:ale_sign_style_warning = '!!'
let g:ale_sign_warning = '!!'
let g:ale_statusline_format = v:null
let g:ale_type_map = {}
let g:ale_use_global_executables = v:null
let g:ale_virtualtext_cursor = 0
let g:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_whitespace = 1

"Nerdtree 
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <C-d> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
let NERDTreeShowBookmarks=1

"taglist
nnoremap <silent> <C-t> :TlistToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_WinWidth = 40

" Tasklist to show all 
let g:tlWindowPosition = 1

" neoformat
" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1
"Code checker plugin
let g:neomake_python_enabled_makers = ['pylint']

" vim markdown
let g:vim_markdown_toc_autofit = 1
set  nofoldenable

" Vim-pencil
filetype plugin on       
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:pencil#joinspaces = 0     " 0=one_space (def), 1=two_spaces

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

" Goyo
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z      
  set noshowmode
  set number
  set relativenumber
  set spelllang=de_AT
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set spelllang=en_us
  set so=0
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
let g:goyo_width=85

" Language Tool
let g:languagetool_jar='$HOME/Applications/LanguageTool-4.9.1/languagetool-commandline.jar'
let g:languagetool_lang='de-AT'


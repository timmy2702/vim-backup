" Indent automatically depending on filetype
filetype indent on
set autoindent
syntax on

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces
set expandtab

" Turn on line numbering. Turn it off with "set nonu" 
set number

" Set syntax on
syntax enable

" Case insensitive search
set ic

" Higlhight search
set hls

" Increment search
set is

" Wrap text instead of being on one line
set lbr

" Force Vim to source .vimrc file in working directory
set exrc
set secure

" set current working directory
set autochdir

" Fix backspace for vim
set backspace=indent,eol,start

" Change colorscheme from default to delek
colorscheme molokai_dark

" Excute pathogen pathogen path
execute pathogen#infect()

" NERDTree setting
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * nested if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " added nested keyword for ycm conflict
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1

" YCM (YouCompleteMe) setting
let g:ycm_collect_identifiers_from_tags_files = 0 " use a lot of memory, so be careful
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_disable_for_files_larger_than_kb = 0
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
set pumheight=5

" Syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_java_javac_config_file_enabled = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_include_dirs = [
      \'includes', 'headers', 'include', 'header',
      \'/usr/include'
      \]
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_compiler = '/usr/bin/g++-7'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall -Wextra -Wpedantic -Wno-deprecated-declarrations -Wno-reorder'
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'

" UltiSnips setting
" set runtimepath+=~/.vim/my-snippets/
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsSnippetsDir="~/.vim/my-snippets"
let g:UltiSnipsSnippetDirectories = ['my-snippets']
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" Pymode setting
let g:pymode_lint_on_write = 0
let g:pymode_rope_completion = 0
let g:pymode_folding = 0

" NerdCommenter setting
filetype plugin on
autocmd BufWinEnter * NERDTreeMirror
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__$']

" Eclim setting
let g:EclimFileTypeValidate = 0
let g:EclimCompletionMethod = 'omnifunc'

" Vim cpp syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" Vim tags setting
set tags=./tags,tags;
" DO NOT set tags+=~/.vim/tags/boost
" instead, use :set when needed cause ycm takes
" a lot of memory to read big ctags

" indent 4 spaces for .py files 
autocmd FileType py setlocal ts=4 sw=4 expandtab

" set copy to clipboard
if has('macunix') || has('win64')
  set clipboard=unnamed
else
  set clipboard=unnamedplus
endif

" set hybrid line number
set number relativenumber

" set split on the right
set splitright

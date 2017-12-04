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

" Wrap text instead of being on one line
set lbr

" Force Vim to source .vimrc file in working directory
set exrc
set secure

" Fix backspace for vim
set backspace=indent,eol,start

" Change colorscheme from default to delek
colorscheme molokai_dark

" Excute pathogen pathogen path
execute pathogen#infect()

" NERDTree setting
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1

" YCM (YouCompleteMe) setting
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_show_diagnostics_ui = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_disable_for_files_larger_than_kb = 0
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
    \'build/ext/gtest/src/googletest/googletest/include',
    \'build/lib/gtest/src/googletest/googletest/include',
    \'/usr/include'
    \]
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall -Wextra -Wpedantic'
let g:syntastic_cpp_config_file = '.syntastic_cpp_config'

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

" Eclim setting
let g:EclimFileTypeValidate = 0
let g:EclimCompletionMethod = 'omnifunc'

" Vim cpp syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let c_no_curly_error = 1

" Vim tags setting
set tags=./tags;/
set tags+=~/.vim/tags/boost

" indent 4 spaces for .py files 
autocmd FileType py setlocal ts=4 sw=4 expandtab

" set copy to clipboard
set clipboard=unnamedplus

" set hybrid line number
set number relativenumber

" set split on the right
set splitright

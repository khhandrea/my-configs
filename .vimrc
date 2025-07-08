" Syntax Highlighting
if has("syntax")
    syntax on
endif

set autoindent

set ts=4 " Tab width
set shiftwidth=4 " Auto indentation with
set showmatch " Highlight parenthesis

" Resume from last position
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
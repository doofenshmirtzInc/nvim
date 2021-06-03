" make the popup menu a little smaller
set pumheight=10
" required to keep multiple buffers open
set hidden
" turn off line wrap
set nowrap
" treat dash separated words as a word text object
set iskeyword+=-
" turn off highlight search
set nohlsearch
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Perform dot commands over visual blocks:
	vnoremap . :normal .<CR>



" Automatically deletes all trailing whitespace and newlines at end of file on save.
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e

" show substitutions incrementally
if has("nvim")
    set inccommand=nosplit
endif

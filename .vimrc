" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
syntax on

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup


if has("gui_macvim")
	let macvim_hig_shift_movement = 1
	let macvim_skip_cmd_opt_movement = 1
	set go-=T
	set bg=dark
	set guifont=Terminus\ Medium:h14
if &background == "dark"
    hi normal guibg=black
    set transp=9
endif
	colorscheme macvim
endif



set dictionary+=~/.vim/wowlua.dict

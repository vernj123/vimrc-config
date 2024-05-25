# my vimrc config and basic vim use how-to notes

This is mostly for backing up my vimrc config along with my how-to notes. 
With that should anyone discover this vimrc feel free to use it as well as the general vim use notes
within this README.

Cheers

My vimrc file is located in $HOME/.vim/vimrc not $HOME/.vimrc becasue it combines
my user runtime files with my user vimrc file

Plug 'lokaltog/powerline-fontpatcher'

Adding the above plug for reference
 
That plug was used when trying to activate powerline symbols however after
adding let g:airline_powerline_fonts = 1 combined with the previous 
hack nerd and powerline fonts the symbols now work

I deleted it from my plugins and vimrc and everything still works

For anyone configuring vim for python and may be wondeing why there isin't any python specific 
settings in my vimrc file read below 

As there is already a default python config setting built into vim and you do
not want to override it but add onto those settings the best thing to do 
is add them to ftplugin. They are specific settings for
the python filetype.

Steps below:(within vim)
-Source vimrc (needs to sourced in order to navigate to user runtime) = :so $ + enter the :so ~/.vim/vimrc + enter
-:e $RTP
-create directory called "after"
-create subdirectory called "ftplugin"
-create file called python.vim
-within python.vim add python specific settings below

set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

set fileformat=unix

"Sets column and color for python files
set colorcolumn=80
hi ColorColumn guifg=grey

let g:ale_linters = {'python': ['flake8']}

Do not forget to !wq to save and exit

NAVIGATE to RTP from vim = :e $RTP


-----------------------------------------------------------------------






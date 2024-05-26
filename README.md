# my vimrc config and basic vim use how-to notes

This is mostly for backing up my vimrc config along with my how-to notes. 
With that should anyone discover this vimrc feel free to use it as well as the general vim use notes
within this README.

Cheers

----------------------------------------------------------------------------------------------------------

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

Steps below:(within vim)<br />
-Source vimrc (needs to sourced in order to navigate to user runtime along with other settings) = :so $ + enter the :so ~/.vim/vimrc + enter<br />
-:e $RTP<br />
-create directory called "after"<br />
-create subdirectory called "ftplugin"<br />
-create file called python.vim<br />
-within python.vim add python specific settings below:

-- set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent<br />
-- set fileformat=unix<br />
-- set colorcolumn=80<br />
   hi ColorColumn guifg=grey<br />
-- let g:ale_linters = {'python': ['flake8']}

-Do not forget to !wq to save and exit

-NAVIGATE to RTP from vim = :e $RTP


-----------------------------------------------------------------------

# GENERAL VIM NAVIGATION AND HOW-TO NOTES:


VIM CHEAT SHEET & SHORTCUTS (enter: "vimtutor" from terminal to open VIM 
built-in tutorial)

DO REMEMBER TO OPEN FILES WITH SPACES IN THE NAME ADD QUOTATION TO NAME, EX: "FILE NAME WITH SPACES" 

EDIT/MODIFY.VIRMC FILE IN VIM (cmd mode)= :e ~/.vim/vimrc<br />
EDIT/MODIFY PYTHON SETTING FILES IN VIM = :e ~/.vim/after/ftplugin/python.vim<br />
EXPLORE FILE SYSTEMS USING VIM= :e ~/.<br />
CREATE new file in directory within vim = %

**CUSTOMIZATION COMMANDS(cmd mode only):**<br />

-Turn on/off syntax = :syntax on/off<br />
-Show status = :set showmode<br />
-Change color scheme = :color (space) then (tab)/or :color (space) ctrl+d to display them all<br />
-esc = change mode to normal mode<br />
-Show/Hide row numbers = :set nu :set nonu<br />
-esc then type ":" = to enter command mode<br />
-"i" = to switch to insert mode while in normal mode to start typing<br />
-":" = to create command while in cmd/nrml mode<br />
-:q! = quit VIM without saving<br />
-:wq! = save & quit in VIM<br />
-Create/name file = :w new file name.txt or whatever ext

**NAVIGATING WITHIN FILE/CODE COMMANDS NORMAL MODE:**

-Move cursor to the end = shift $ (shift A will do the same + put into insert mode)<br />
-Move cursor to the start = shift 0<br />
-Move to beginning of the file = gg<br />
-Move to end of file = shift+g<br />
-Navigate back a screen/directory etc = ctrl o<br />
-Undo previos change = "u"  (only open session, even after save, if close after save and reopen, will not work)<br /> 
-Delete character = press "x" (in normal mode you can press "u" to undo removal while in normal mode)<br />
-Delete line = DD (U undos that as well)

 
 Move cursor around *h j k l keys*  (instead of arrow keys):<br />
-h= moves cursor left<br /> 
-l= moves cursor right<br />
-j= moves cursor down<br />
-k= moves cursor up

-Display filetype (python, c++ etc) :set ft?<br />
-Source config once update done in VIM to implement changes (after :w!)= :so $<br />

**Tab navigation:**<br />
-:tabnew= open new tab<br />
-:tabp = go back<br />
-:tabn = to go forward

Edit command line history(cmd mode)=ctrl+f

**COMBINE FILES TOGETHER (PUTTING CONTENTS OF ONE FILE TO CURRENT OPEN FILE):**
-Move cursor to end of file<br />
-shift+A to move cursor to the end<br />
-enter to go to new line<br />
-go to normal mode<br />
-go to cmd mode<br />
-enter "r"  (:r= read a file)<br />
-navigate to file location<br />
--either quit (q!) to not save file or save as new file by :w! newfilename

**ENTER LINUX COMMANDS FROM INSIDE VIM:** (cmd mode)

-:! ls --will list files (press enter to escape)<br />
better way to put it is enter "!" in cmd mode and run the linux terminal command


-Enter runtime path = :e $RTP<br />
-Enter VIM runtime = e $VIMRUNTIME<br />
-Navigate back = ctrl o<br />

Airline Status line plugin theme command to change themes= AirlineTheme theme name
 
**VISUAL MODE--(THIS IS WHERE YOU CAN COPY PASTE) --Activated by entering "v"**

Copy a certian section you move your curser to where you want in normal mode first then switch to visual modeto select
-Copy selection = "y" (yank)
-In normal mode navigate to paste location and enter "p" (put)
(to put between lines switch to insert create now line then normal and enter "p")

Copy to clipboard: (this allows you to copy paste outside of vim)<br />
-check if this is included in your vim :echo has('clipboard') 0=no 1=yes<br />
-If no then Debian & Ubuntu: sudo apt install vim-gtk3

Afterwards you should have clipboard functionality. You can check with echo has('clipboard')<br />
-shift v for visual line<br />
-only v in command normal mode<br />
-select line/block<br />
-shift  double quotes,plus sign, y / (shift " + y)<br />
-paste 


**Alphabetize:**<br />
-Select/highligt text
-press ":" (to make cmd prompt appear)<br />
-enter sort ui

**Find and Replace (CMD MODE):**
-%S/what we want to replace/what we want it changed to/g<br />
-Move from beginning of file to the end


**VIM PANE SPLITTING** 

-Horizontal= (in command mode) enter :split or :sp + file name<br />
 to move to other file= ctrl ww<br />
-Vertical= :vsplit or :vs

**Type in path if file is in different location after vsp or sp:**<br />
  ex :vsp ~/directory/filename

-Navigate to RTP = :e $RTP


**See files in vim (cmd mode)= :version:**<br />
-Nu NORC = Run vi instead but in no compatable mode, meaning not to run in orginal vi settings but you want VIM improved so you want vim settings as well as run w/o and config settings at all from a normal vimrc
ex = vi -Nu -NORC (Filepath and name)



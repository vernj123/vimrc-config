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
-within python.vim add python specific settings below:

set shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

set fileformat=unix

"Sets column and color for python files

set colorcolumn=80

hi ColorColumn guifg=grey

let g:ale_linters = {'python': ['flake8']}

-The above line is the end of the config

-Do not forget to !wq to save and exit

-NAVIGATE to RTP from vim = :e $RTP


-----------------------------------------------------------------------

# GENERAL VIM NAVIGATION AND HOW-TO NOTES:


VIM CHEAT SHEET & SHORTCUTS (enter: "vimtutor" from terminal to open VIM 
built-in tutorial)

DO REMEMBER TO OPEN FILES WITH SPACES IN THE NAME ADD QUOTATION TO NAME, EX: "FILE NAME WITH SPACES" 

EDIT/MODIFY.VIRMC FILE IN VIM (cmd mode)= :e ~/.vim/vimrc
EDIT/MODIFY PYTHON SETTING FILES IN VIM = :e ~/.vim/after/ftplugin/python.vim
EXPLORE FILE SYSTEMS USING VIM= :e ~/.

CREATE NEW FILE IN A DIRECTORY IN VIM = %

CUSTOMIZATION COMMANDS(cmd mode only)
set
--Turn on/off syntax = :syntax on/off

--Show status = :set showmode

--Change color scheme = :color (space) then (tab)/or :color (space) ctrl+d to display them all
set
  esc = change mode to normal mode

--Show/Hide row numbers = :set nu :set nonu
 
 esc then type ":" = to enter command mode

 "i" = to switch to insert mode while in normal mode to start typing

 ":" = to create command while in cmd/nrml mode
 
 :q! = quit VIM without saving

 :wq! = save & quit in VIM
 
 Create/name file = :w new file name.txt or whatever ext

***NORMAL MODE COMMANDS***

 Move cursor to the end = shift $ (shift A will do the same + put into insert mode)

 Move cursor to the start = shift 0
 
 Move to beginning of the file = gg

 Move to end of file = shift+g

Nacigate back a screen/directory etc = ctrl o
 
 Undo previos change = "u"  (only open session, even after save, if close after save and reopen, will not work) 
 
 Delete character = press "x" (in normal mode you can press "u" to undo removal while in normal mode)

 Delete line = DD (U undos that as well)

 
 Move cursor around *h j k l keys*  (besides arrow keys):

 h= moves cursor left 
 l= moves cursor right
 j= moves cursor down
 k= moves cursor up 

See files in vim (cmd mode)= :version

-Nu NORC = Run vi instead but in no compatable mode, meaning not to run in orginal vi settings but you want VIM improved so you want vim settings as well as run w/o and config settings at all from a normal vimrc
ex = vi -Nu -NORC (Filepath and name)

:set ft? = to display filetype (rupy, python etc)

:so % = source config once update done in VIM to implement changes (after :w!)

Multiple Tabs
:tabnew= open new tab
:tabp = go back
:tabn = to go forward

when in cmd line mode ctrl+f to edit command line history

--COMBINE FILES TOGETHER (PUTTING CONTENTS OF ONE FILE TO CURRENT OPEN FILE)
-Move cursor to end of file
-shift+A to move cursor to the end
-enter to go to new line
-go to normal mode
-go to cmd mode
-enter "r"  (:r= read a file)
-navigate to file location
--either quit (q!) to not save file or save as new file by :w newfilename

**ENTER LINUX COMMANDS FROM INSIDE VIM:** (cmd mode)

! ls  ---will list files (press enter to escape)
or a better way to put it is enter "!" in cmd mode and run the linux terminal command


Enter runtime path = :e $RTP

Enter VIM runtime = e $VIMRUNTIME ---This shows all sys file in vim?

Navigate back = ctrl o

Airline Status line plugin theme command to change themes= AirlineTheme theme name
 
---VISUAL MODE--(THIS IS WHERE YOU CAN COPY PASTE) --Activated by entering "v"

**If you want to copy a certian section you move your curser to where you want in normal mode first then switch to visual mode to select**

to copy selection = "y" (yank)

in normal mode navigate to paste location and enter "p" (put)

(to put between lines switch to insert create now line then normal and enter "p")

Copy to clipboard: (this allows you to copy paste outside of vim)
-check if this is included in your vim :echo has('clipboard') 0=no 1=yes

-If no then Debian & Ubuntu: sudo apt install vim-gtk3

Afterwards you should have clipboard functionality. You can check with echo has('clipboard')

Visual copy paste:
<p>-shift v for visual line<br>
-only v in command normal mode
-select line/block
-shift  double quotes,plus sign, y / (shift " + y)
-paste</p> 


Alphabatize-

--Select/highligt text
--press ":" (to make cmd prompt appear)
--enter sort ui

Find and Replace (CMD MODE)

-- %S/what we want to replace/what we want it changed to/g

--Move from beginning of file to the end


**VIM PANE SPLITTING** 

Horizontal= (in command mode) enter :split or :sp + file name
to move to other file= ctrl ww 

Vertical= :vsplit or :vs

Type in path if file is in different location after vsp or sp
ex :vsp ~/directory/filename

Navigate to RTP = :e $RTP





# VIM

* Vim has 3 modes:
* `Esc` **Command**
* `i` **Insert**
* `v` **visual**

## NORMAL MODE
`operator{motion}` is a powerfull combination for editing. The operator
command is applied on the motion. Its effect reaches from the cursor to the
specified position by the motion command e.g. `dap` delete a paragraph,
`gUw` convert to uppercase a word

When an operator command is invoked in duplicate it acts upon the current e.g.
line `dd` delete line, `>>` indent line, `gUgU` or `gUU` line to uppercase

### COMMANDS
* `<n><c>` executes the program `n` times where n is number and c command
* `:` character starts an ex command
* `%` specifies range of lines for the operation
* `.` repeats last change, even saving keystrokes in _Insert mode_, mini-macro

#### COMPOUND COMMANDS
Compound | Longhand
---------|----------
`C` | `c$`
`s` | `cl`
`S` | `^C`
`I` | `^i`
`A` | `$a`
`o` | `A<CR>`
`O` | `ko`

### CURSOR MOTIONS
* `0` to beginning of line
* `$` to end of line
* `^` to first non-blank character of line
* `w` to beginning of next word
* `W` to beginning of next word, ignore punctuation
* `b` to beginning of current word
* `B` to beginning of current word, ignoring punctuation
* `e` to end of current word
* `<C-f>` page down
* `<C-b>` page u
* `numberG` to line number
* `<n>G` to file `n` line, default last
* `gg` go to first line, shortcut of `1G`
* `<C-o>` go to previous cursor location (big jumps), `<C-i>` forward
* `%` go to matching `)`, `]` or `}`
* `f{char}` ro next `char` in line, `3fz` to 3rd `z`. `F{char}` previous
* `t{char}` till before  next `char` in line, `T{char}` previous
* `;` repeat latest `f`, `t`, `F` or `T`
* `,` repeat latest `f`, `t`, `F` or `T` in opposite direction
* `aw` motion for "a word" `daw` deletes the word the cursor is in
* `ap` motion for "a paragraph"

### EDIT
* `J` join lines
* `u` undo last change, change everything we do between entering Insert mode
  and comming back to normal mode
* `U` undo all line, return to original state
* `<C-r>` redo, undo the undo's
* `p` **put** text after cursor (paste)
* `s` delete count characters & _Insert mode_
* `c{motion}` **change**, delete motion & insert, `ce` change until end word
* `~` switch case on character under the cursor and move cursor
* `ddp` swaps line: `dd` delete line; `p` paste below
* `gU{motion}` test uppercase, `gu{motion` text lowercase

### DISPLAY
* `zz` move current line to middle of screen
* `zt` move current line to top of screen
* `zb` move current line to bottom of screen
* `<C-E>` move screen up one line
* `<C-Y>` move screen down one line

### NUMBERS
* Arithmetic operations over cursor digit, supports hex, octal
* `{n}<C-a>` addition of count `n`
* `{n}<C-x>` subtraction of count `n`


### WRITE
* `a` append text, move cursor forward & _Insert mode_
* `A` append text, move to end of line & _Insert mode_
* `o` open line below current & _Insert mode_
* `O` open line above durrent & _Insert mode_

### DELETE (CUT)
* `x` current character `3x` 3 characters
* `dd` current line `5dd` current + 4 lines
* `dW` from cursor until beginning of next word
* `d$` current cursor to end of line
* `dO` current cursor to beginning of line
* `dG` current cursor to end of file
* `d20G` from current to 20th line of file

### YANK
* `yy` current line `5yy` current + 4
* `yW` current position to beginning of next word
* `y$` current position to end of line
* `y0` current position to beginning of line
* `y^` current position to first non-whitespace charecter in line
* `yG` current position to end of file
* `y20G` current position to 20th line of file

### SEARCH
* Last search will always be active, if pressed `n` or `N` will continue
* `/` search forward for word or phrase, `n` repeat, `N` repeat backwards
* `?` search backward for word or phrase
* `/word\c` ignore case `\c`
* `d2/foo` search can be a motion, delete until second occurrence of `foo`
* `*` search forward the cursor word, `#` backwards

### SUBSTITUTE
* `:s/old/new` substitute in line the first occurrence of old for new
* `:s/old/new/g` global flag  `g`, substitute all occurrences in line  
* `:#,#s/old/new/g` substitute between 2 lines, # and #, number of line
* `:%s/old/new/g` substitute in the entire file
* `%s/old/new/gc` find in entire file and prompt wheter to substitute or not
* `:%s/Line/line/g` search and replace on file
  * `%` range of lines for the operation
  * `s` operation: substitution
  * `line/Line` search/substitution
  * `g` global, `gc` global + user confirmation

### FILES
In Vim, we edit an in-memory representation of a file, called _buffer_.
While files are stored on disk, buffers exist in memory. When opening a file
its contents are read into a buffer. Most commands operate on buffers, a few
on files: `:write`, `:update`, :`saveas`.
* `:ls` show all buffers. `%` current, `#` alternate, `a` active: loaded &
visible.
* `<C-^>` tooghe between current & alternate buffer.
* `:bn` buffer next, `:bp` buffer previous, `:bf` last, `:bf` first.
* `:bd` buffer delete, does not affect to the file on disk.
* `!` before command forces file change if unsaved
* `:buffers` show open files
* `:e <filename>` opens the specified file
* `<C-g>` show file status and location
* `:w[<fname>]` write file, if filename specified write to new file

### FOLDING
* Folds at cursor location
  * `zo` open
  * `zc` close
  * `zO` open all levels
  * `zC` close all levels

* All folds in file
  * `zR` open all
  * `zM` close all
  * `zr` close one level
  * `zm` open one level

## INSERT MODE

### COMMANDS
* `<C-w>` delete back one word
* `<C-u>` delete back to start of line
* `<C-[>` switch to _Normal mode_
* `<C-o>` switch to _Insert Normal mode_, allows only one command
* `<C-r>{register}` paste text from register addres at cursor position

## REPLACE MODE
Identical to _Insert mode_, except that it overwrites existing text
* `R` enter _Replace mode_
* `r{char}` enter single-shot version of _Replace Mode_

## VISUAL MODE
Define a selection of text and operate upon it. There are 3 submodes:
* `v` __Character-wise__
* `V` __Line-wise__
* `<C-v>` __Block-wise__

### COMMANDS
* Once a command is executed in __visual mode__ switches into __Normal mode__
* `gv` reselsect the last visual selecition
* `o` go to other end of highlighted text
* `r{char}` replaces all selected characters {char}, useful

## COMMAND LINE MODE
Used to type `Ex` commands. Normal mode tends to act on cursor line and col,
__command line__ mode can be executed anywhere. Typed on buffer with a `:`
* `:{number}` moves cursor to line number
* `:{n1},{n2}{cmd}` executes command on range of lines from n1 to n2
* `.` or empty means current line
* `%` stands for all lines of current file
* Commands can also operate on visual selection, will show `:'<,'>`
  `'>` symbol marks the first line of the visual selection `'>` the last
* `:normal {cmd}` execute normal mode commands as command line tool. If used
  together with visual mode: for each line in selection execute normal cmd
* `:move` or `:m` command. `:[range]m[ove] {address}`
  * `:m 12` move current line to after line 12
  * `:m $` move current line to after last line
  * `:5,7m 21` move lines 5, 6 & 7 to after line 21
  * `:.,.+4m 21` move 5 lines starting at current to after line 21
* `:@` repeat the last Ex command. Normal mode `.` equivalent, useful buffers
* `q:` shows the Ex command history `<CR>` accepts, can be edited as file
* `:r[ead]` **read** insert contents on line below cursor
  * `:r <fname>` put contents of file `fname`
  * `:r !<cmd>` put output of shell command `:r !ls`

## REGISTER
Delete and yank commands set contents of a register. Put commands get contents
of a register & inserts them into the document. The expression register can
evaluate a piece of Vim script and return the result, can use as calculator.
* `<C-r>={math-expression}` perform calculation and insert into document

### PRACTICE TEXT
Chapter     |   Page
--------------------
Normal mode |   15
Insert mode |   31
Visual mode |   44

var foo = 1;
var bar = 'a';
var foobar = foo + bar;

### PAGE LOCATION
* page 77

# VIM

## GENERAL
* Vim has 3 modes:
  * __Command or normal mode__
  * __Insert mode__

## COMMANDS
* `<n><c>` executes the program `n` times where n is number and c command
* `:` character starts an ex command
* `%` specifies range of lines for the operation

### CURSOR
* `0` to beginning of line
* `$` to end of line
* `w` to beginning of next word
* `W` to beginning of next word, ignore punctuation
* `b` to beginning of current word
* `B` to beginning of current word, ignoring punctuation
* `e` to end of current word
* `ctrl F` page down
* `ctrl B` page u
* `numberG` to line number
* `G` to file last line

### EDIT
* `u` undo last change
* `U` undo all line, return to original state
* `Ctrl-R` redo, undo the undo's
* `p` put text after cursor (paste)
* `r<char>` replace character, `rt` replaces cursor character with `t`
* `c<motion>` change, delete motion & insert mode, `ce` change until end word

### WRITE
* `a` append text, move cursor forward and enter _insert mode_
* `A` append text, move to end of line and enter _insert mode_
* `o` open line below current & _insert mode_
* `O` open line above durrent & _insert mode_

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
* `yG` current position to end of line
* `y20G` current position to 20th line of file

### EDITING
* `J` join lines
* `~` change one character upper to lower or vice versa
* `ddp` swaps line: `dd` delete line; `p` paste below
* `:m<n>` moves current line to line 'n'. with `+n` relative movement

### SEARCH
* `f` search a character within a line `;` repeat search
* `/` search file for word or phrase `n` repeat search
* `:%s/Line/line/g` search and replace on file
  * `%` range of lines for the operation
  * `s` operation: substitution
  * `line/Line` search/substitution
  * `g` global, `gc` global + user confirmation

### FILES
* `:bn` next file
* `:bp` previous file
* `:bd` buffer delete (close file)
* `!` before command forces file change if unsaved
* `:buffers` show open files
* `:r <filename>` inserts the specified file below cursor position
* `:e <filename>` opens the specified file

## USEFUL FUNCTIONS TO LEARN
* How to close one of the many open files
* How to open and close terminal
  * How to execute code easily
* What happens with tabs, python

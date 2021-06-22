# VIM

## GENERAL
* Vim has 3 modes:
* `Esc` **Command**
* `i` **Insert**
* `v` **visual**

## COMMANDS
* `<n><c>` executes the program `n` times where n is number and c command
* `:` character starts an ex command
* `%` specifies range of lines for the operation
* `.` repeats last change, even saving keystrokes in insert mode, mini-macro

### COMPOUND COMMANDS
Compound | Longhand
---------|----------
`C` | `c$`
`s` | `cl`
`S` | `^C`
`I` | `^i`
`A` | `$a`
`o` | `A<CR>`
`O` | `ko`

## CURSOR MOTIONS
* `0` to beginning of line
* `$` to end of line
* `^` to first non-blank character of line
* `w` to beginning of next word
* `W` to beginning of next word, ignore punctuation
* `b` to beginning of current word
* `B` to beginning of current word, ignoring punctuation
* `e` to end of current word
* `ctrl F` page down
* `ctrl B` page u
* `numberG` to line number
* `<n>G` to file `n` line, default last
* `gg` go to first line, shortcut of `1G`
* `<C-o>` go to previous cursor location (big jumps), `<C-i>` forward
* `%` go to matching `)`, `]` or `}`
* `*` to next occurrence of word under cursor, `#` previous
* `f{char}` to next `char` in line, `3fz` to 3rd `z`. `F{char}` previous
* `t{char}` to next `char` in line, `3fz` to 3rd `z`. `T{char}` previous
* `;` repeat latest `f`, `t`, `F` or `T`
* `,` repeat latest `f`, `t`, `F` or `T` in opposite direction

## EDIT
* `u` undo last change
* `U` undo all line, return to original state
* `<C-r>` redo, undo the undo's
* `p` **put** text after cursor (paste)
* `r{char}` **replace** character, `rt` replaces cursor character with `t`
* `R` replace more than one character, every typed char replaces existing one
* `s` delete count characters & insert mode
* `c{motion}` **change**, delete motion & insert, `ce` change until end word
* `.` repeat the last command

## WRITE
* `a` append text, move cursor forward & _insert mode_
* `A` append text, move to end of line & _insert mode_
* `o` open line below current & _insert mode_
* `O` open line above durrent & _insert mode_

## DELETE (CUT)
* `x` current character `3x` 3 characters
* `dd` current line `5dd` current + 4 lines
* `dW` from cursor until beginning of next word
* `d$` current cursor to end of line
* `dO` current cursor to beginning of line
* `dG` current cursor to end of file
* `d20G` from current to 20th line of file

## YANK
* `yy` current line `5yy` current + 4
* `yW` current position to beginning of next word
* `y$` current position to end of line
* `y0` current position to beginning of line
* `y^` current position to first non-whitespace charecter in line
* `yG` current position to end of line
* `y20G` current position to 20th line of file

## EDITING
* `J` join lines
* `~` change one character upper to lower or vice versa
* `ddp` swaps line: `dd` delete line; `p` paste below
* `:m<n>` moves current line to line 'n'. with `+n` relative movement

## SEARCH
* Last search will always be active, if pressed `n` or `N` will continue
* `/` search forward for word or phrase, `n` repeat, `N` repeat backwards
* `?` search backward for word or phrase
* `/word\c` ignore case `\c`
* `d2/foo` search can be a motion, delete until second occurrence of `foo`
* `*` search forward the cursor word, `#` backwards

## SUBSTITUTE
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

## FILES
* `:bn` next file
* `:bp` previous file
* `:bd` buffer delete (close file)
* `!` before command forces file change if unsaved
* `:buffers` show open files
* `:r <filename>` inserts the specified file below cursor position
* `:e <filename>` opens the specified file
* `<C-g>` show file status and location
* `:w[<fname>]` write file, if filename specified write to new file
* `:r` **read** insert contents on line below cursor
  * `:r <fname>` put contents of file `fname`
  * `:r !<cmd>` put output of shell command `:r !ls`


## PAGE LOCATION
* page 6

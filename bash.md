# BASH - BOURNE AGAIN SHELL

## STANDARD INPUT, OUTPUT AND ERROR
* Programs send their results to special files:
* Programs produce output on any of several numbered file streams:
  * 1: _stdout_ standard output file where results are sent
  * 2: _stderr_ standard error file where status messages are sent
  * 3: _stdin_ input that pgrograms take, by default, attached to keyboard

### I/O REDIRECTIONS
* `>` _stdout_ Redirection operator. Once Overwrites file, twice appends `>>`
* `[n]>` if number n is present we can choose the file to redirect
* `&>` redirects standart output and standard error at the same time
* `cat` command reads file[s] and copies them to standard output
* `echo` sends to _stdout_ the inputed text arguments

## COMMANDS
* Commands issue a value (0, 255) to the system, `0` for success and rest for
  failure. Parameter `?` contains it, `echo $?`
* A command can be one of the following 4 things:
  * Executable program: examples in `/usr/bin` complied binaries (C++, C...)
    or scripting languages (Perl, Python, Ruby...)
  * Command built into the shell itself: shell builtins (cd..)
  * Shell function: miniature shell scripts incorporated into the environment
  * Alias: user defined commands
* Usually followed by options (modify behavior) and arguments (items upon
  which the command acts)
* Documentation:
  * `[]` square brackets in a command's syntax indicate optional items
  * `|`  vertical bar inicates mutually exclusive item
  * Example: cd `[-L|[-P[-e]]] [dir]` cd may be followed optionally by
    either a `-L` or a `-P`. Further if `-P` option is specified the `-e`
    option may also be included folowed by the optional argument
* Many executable programs support a `--help` option that displays description
* More than one command can be put separated with a semicolon `;`
* `$` Command substitution allows to use the output of a command as an 
  expansion `ls -l $(which python)`
* `!<n>` executes history's nth command.

## PROCESSES
When modern OS are _multitasking_ they create the illusion by switching
from executing programs. Linux Kernel manages the different programs waiting
their turn at the CPU using __processes__. 
* `&` after a command returns a process to the foreground

## SCRIPTS

### FLOW CONTROL
* `test expression` is similar to `[ expression ]`, returns exit status of `0`
  when `expression` is `tue`, `1` otherwise
* Flow contro structure:
```bash
if [ "$x" -eq 5 ]; then
    echo "x equals 5."
else
    echo "x does not equal 5."
fi
```
There are expressions for `files`, `strings` and `integers`
Table of expressions:
Expression | Is true if
------------ | -------------
`file1 -nt file2` | `file1` is newer than `file2`
`file1 -ot file2` | `file1` is older than `file2`
`-e file` | `file` exists
`-f file` | `file` exists and is a regular file
`-L file` | `file` exists and is a symbolic link
`-r file` | `file` exists and is readable
`-w file` | `file` exists and is writable
`-x file` | `file` exists and is executable

## SHORTCUTS
* Cursor movement
  * `<C-a>` to beginning of line
  * `<C-e>` to end of line
  * `<C-f>` move cursor forward one character
  * `<C-b>` move cursor backward one character
  * `<Alt-f>` move cursor forward one word
  * `<Alt-b>` move cursor backward one word
* Modifying text
  * `<C-d>` delete character at cursor
  * `<C-t>` transpose character at cursor
  * `<Alt-t>` transpose word at cursor
* Killing & Yanking (Cut & Paste)
  * `<C-k>` kill from cursor to end of line
  * `<C-u>` kill from dursor to beginning of line
  * `<C-y>` yank text from kill-ring 

### BASIC COMMANDS
* `ln`      create link, option `-s` symbolic, otherwise hard
* `cat`     read text of file
* `type`    displays kind of command passed
* `which`   display executable's location
* `file`    show file info
* `whatis`  one line manual page descriptions
* `|`       pipeline, first commands output to  seconds input `<cmd> | <cmd>`
* `$`       replaces with result of the command e.g. `echo folder: $(pwd)`
* `du`      disk usage. `du -hcs` gives a nice output
* `history` display or manipulate the history list
   writable for user. readable for groups


### USEFUL COMMANDS
* `find`     search for files in a directory hierarchy
  * `find [-H] [-L] [-P] [-Olevel] [-D debugopts] [path...] [expression]`
  * `-type d`                       directories
  * `-type f`                       files
  * `-type f -name <filename>`      files by name, case sensitive
  * `-type f -iname <filename>`     files by name, not case sensit
  * `-type f -mmin -<n>`            files modified less than n mins ago
  * `-type f -mmin +<n>`            files modified more than n mins ago
  * `-type f -mtime +<n>`           files modified more than n days ago
  * `-size +5M`                     larger than 5 MB
  * `-empty`                        empty
  * `-perm 777`                     permitions of 777 read, write, execute
  * `-maxdepth <n>`                 search only to that level of depth
  * `-exec <command> {} +`          `{}` symbolizes the argument to pass which
    are the results. `+` ends the execution command

* `grep` print lines that match patterns
  * `grep [OPTION...] PATTERNS [FILE...]`
  * `-w`        match only whole words
  * `-i`        convert to not case sensitive
  * `-n`        returns the line number
  * `-r`        recursive search
  * `-l`        only return the file name, not text
  * `-l`        return file name and number of occurrences
  * `-B <n>`    watch number of lines before found line
  * `-A <n>`    watch number of lines after found line
  * `-C <n>`    watch number of lines before and after
  * `-P`        usre pearl compatible regular expressions

## CONFIGURATION
* `ls` output color 
  * `di=00;31` sets bold text `a0` and red foreground `31`
  * xterm-256 colors `di=38;5;215;01` sets 256/24-bit fg color `38;5` color 
    number `215` and bold `01`

## MOUNTING DEVICES
* Mounting a device is to attach it to the file system tree `mount`

 __page 100__ 

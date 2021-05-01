# BASH - BOURNE AGAIN SHELL

## COMMANDS
* A command can be one of the following 4 things:
  * Executable program: examples in `/usr/bin` complied binaries (C++, C...)
    or scripting languages (Perl, Python, Ruby...)
  * Command built into the shell itself: shell builtins (cd..)
  * Shell function: miniature shell scripts incorporated into the environment
  * Alias: user defined commands
* Usually followed by options that modify behavior and arguments (items upon
  which the command acts)
* Documentation:
  * `[]` square brackets in a command's syntax indicate optional items
  * `|`  vertical bar inicates mutually exclusive item
  * Example: cd `[-L|[-P[-e]]] [dir]` cd may be followed optionally by
    either a `-L` or a `-P`. Further if `-P` option is specified the `-e`
    option may also be included folowed by the optional argument
* Many executable programs support a `--help` option that displays description
* More than one command can be put separated with a semicolon `;`

### BASIC COMMANDS
* `sudo apt-get update`
* `sudo apt-get upgrade`

* `ls`      list directory
* `cd`      change directory
* `mdkir`   make directory
* `touch`   create a file
* `cat`     read text of file
* `cp`      copy, -u update
* `mv`      move file, rename file, move and rename
* `rm`      remove files

* `man`      manual page of command, documentation
* `type`     displays kind of command passed
* `which`    display executable's location
* `help`     get help for shell builtins
* `file`     show file info
* `less`     read text file
* `zless`    display contents of gzip compressed files
* `whatis`   one line manual page descriptions
* `info`     manuals displayed with a reader program, hyperlinks to nodes

* `|`       pass first commands output as seconds input <cmd> | <cmd>
* `$`       replaces with result of the command e.g. echo "folder: $(pwd)"
* `du`      disk usage. 'du -hcs' gives a nice output
* `history` display or manipulate the history list
* `source`  execute file, usually '.bash*' files
* `chmod 644` change mode of files (permission) 644 means readable executable,
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
  * `-exec <command> {} +`          -exec rm {} +       {} symbolizes the
     argument to pass which are the results. '+' ends the execution command


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



* Item 1
* Item 2
  * Item 2a
  * Item 2b

  1. Item 1
1. Item 2
1. Item 3
   1. Item 3a
   1. Item 3b

![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)

http://github.com-automatic!
[GitHub](http://github.com)

As Kanye West said:

> We're living the future so
> the present is our past.

I think you should use an
`<addr>` element here instead.

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

Sometimes you want numbered lists:

1. One
2. Two
3. Three

Sometimes you want bullet points:

* Start a line with a star
* Profit!

Alternatively,

- Dashes work just as well
- And if you have sub points, put two spaces before the dash or star:
  - Like this
  - And this

  # Structured documents

Sometimes it's useful to have different levels of headings to structure your documents. Start lines with a `#` to create headings. Multiple `##` in a row denote smaller heading sizes.

### This is a third-tier heading

You can use one `#` all the way up to `######` six for different heading sizes.

If you'd like to quote someone, use the > character before the line:

> Coffee. The finest organic suspension ever devised... I beat the Borg with it.
> - Captain Janeway

There are many different ways to style code with GitHub's markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you've got a longer block of code, you can indent with four spaces:

    if (isAwesome){
      return true
    }

GitHub also supports something called code fencing, which allows for multiple lines without indentation:

```
if (isAwesome){
  return true
}
```

And if you'd like to use syntax highlighting, include the language:

```javascript
if (isAwesome){
  return true
}
```




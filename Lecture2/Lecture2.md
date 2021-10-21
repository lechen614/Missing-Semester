## Shell Scripting
### Variables
Assignment `foo=bar`
Access variable `echo $foo`
**space are very critial**, you cannot do `foo = bar`

String: `echo "Value is $foo"` V.S. `echo 'Value is $foo'`, 
single quote is string literal while double quote will substitute variables 


### Function
`source` -> excute script file
`$0` is the name of the script, `$1` - `$9` arguments
`$?` get the error code of the previous command
`$_` get the last argument of the last command
`!!` repeat last command,  [more trick related to `!`](https://www.redhat.com/sysadmin/bash-bang-commands)

`foo=$(pwd)` store current directory
`echo "We are in $(pwd)"` get the variable content

command substitution `$(CMD)`, which will execute `CMD`, get the output and substitued in place
E.g. `for file in $(ls)`
process substitution `<(CMD)`, which will execute `CMD`, place output in a temporary file and substitude `<()` with that file's name. It is useful when commands expect values to be passed by file instead of by **STDIN**.
E.g. `diff <(ls foo) <(ls bar)`
`cat <(ls)`

Shell globbing:
- Wildcards `?` holds place for single character while `*` holds for zero or arbitrary amount of characters
- Curly braces

Expand with `{}` when you have common substring in a series of commands, delimited by `,`

`shellcheck` will help you find errors in your sh/bash scripts
Execute other type of scripts using **[shebang](https://en.wikipedia.org/wiki/Shebang_(Unix))**.
A good practice of executing other scripts is using environment variable instead of absolute path
`#!/usr/bin/python3`
`#!/usr/bin/env python3`


## Shell Tools
### Finding how to use commands
Command flags such as `-H` or `--help`
More detailed is use `man`
An useful tool `tldr`

### Finding files
`find` vs `locate` [detailed comparison](https://unix.stackexchange.com/questions/60205/locate-vs-find-usage-pros-and-cons-of-each-other)

### Finding code
`grep`

### Finding shell commands 
use `history` or `Ctrl+R`

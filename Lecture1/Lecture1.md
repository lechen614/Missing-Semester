### Using the shell
shell: delimited by space

*display Path:*
- In Linux shell `echo $PATH`
- In cmd `echo %PATH%`
- In power shell `$Env:PATH`

### Navigating in the shell
`pwd` print where you are

`.` Means the current directory
`..` Means the parent directory
`~` Means the home directory

`ls` all files in current directory; `ls -l` -> display detail infomation;

By inputing `ls --help`
The usage line:
`Usage: ls [OPTION]... [FILE]...`

`...` means arbitrary number, in `[]` means optional

Flag: does not take a value. e.g. `-a`
Option: take a value. e.g. `-C`


`cd` change directory; `cd ~` -> to home directory; `cd -` -> back to last directory
`mv` rename a file, take two paths as arguments. 
`cp` copy a file, also take two paths as arguments.
`rm` remove a file, it is not recursive by default; `rm -r` -> recursive; `rmdir` remove empty directory
`mkdir` make a directory -> if there are two arguments, two directories will be created.

`man` manual page for command e.g. `man ls`

### Connecting programs, interact with multi files
Streams: input stream; output stream.
Shell provide a way to rewire these streams.

`>` put output to ... e.g. `echo hello > hello.txt`. It can be verified by `cat hello.txt`, the `cat` print the content of the file.

`<` put the right as the input of the left
E.g. `cat < hello.txt > hello2.txt`, it copies the content from hello.txt to hello2.txt

While `>` is put, `>>` is append

Pipe character `|` take output of left, make the input of the right. Which is basically rewire.
E.g. `ls -l /` -> print a bunch of things; `tail -n1` print the last line; `ls -l / | tail -n1` -> output of left go to the input as the left.

Example usage of `|`
`curl --head --silent google.com`, http header for accessing google.com
`curl --head --silent google.com | grep -i content-length`, print the content length of the header
`curl --head --silent google.com | grep -i content-length | cut --delimiter=' ' -f2`, print second field, which is the content length

`sudo` means super user do sth...
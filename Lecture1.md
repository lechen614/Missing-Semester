### Using the shell
shell: delimited by space

### Navigating in the shell
`pwd` print where you are
`ls` all files in current directory; `ls -l` -> display detail infomation;
`cd` change directory; `cd ~` -> to home directory; `cd -` -> back to last directory
`mv` rename a file, take two paths as arguments. 
`cp` copy a file, also take two paths as arguments.
`rm` remove a file, it is not recursive by default; `rm -r` -> recursive; `rmdir` remove empty directory
`mkdir` make a directory -> if there are two arguments, two directories will be created.

### Connecting programs
Streams: input stream; output stream.
Shell provide a way to rewire these streams.

`>` put output to ... e.g. `echo hello > hello.txt`. It can be verified by `cat hello.txt`, the `cat` print the content of the file.

`<` put the right as the input of the left
E.g. `cat < hello.txt > hello2.txt`, it copies the content from hello.txt to hello2.txt

`|` rewire.
E.g. `ls -l /` -> print a bunch of things; `tail -n1` print the last line; `ls -l / | tail -n1` -> output of left go to the input as the left.
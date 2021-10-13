### P1
[Link for WSL download and config](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

[Link for issues fix](https://github.com/microsoft/WSL/issues/5325)

[Link for trim terminal](https://askubuntu.com/questions/145618/how-can-i-shorten-my-command-line-bash-prompt)

### P2
`mkdir /tmp/missing`, and validate using `ls /tmp`

### P3
`man touch`
`touch` can change file timestamps, A FILE argument that does not exist is created empty. unless specified.

### P4
`touch /tmp/missing/semester`

### P5
`echo '#!/bin/sh' > semester` or `echo \#\!/bin/sh > semester` for the first line, **double** quote v.s. **single quote**.
For the second line, use `>>` to append the second line content

`echo '#!/bin/sh' > semester`
`echo 'curl --head --silent https://missing.csail.mit.edu' >> semester`

Validate using `cat /tmp/missing/semseter`

### P6
Got output: `./semester: Permission denied`
This is because don't have execution privileges of the file, as `ls -l` result shown below:
`-rw-r--r-- 1 lechen lechen 63 Oct 12 21:58 semester`

### P7 
As shown in P6, -rw, do not have execution permission.
While `sh semester` is basically execute the file for me, since we have the read permission

[command line permissions](https://linuxcommand.org/lc3_lts0090.php)
[what does adding sh do](https://askubuntu.com/questions/263504/what-does-adding-sh-do)

### P8
`chmod` [change access permissions](https://www.gnu.org/software/coreutils/manual/html_node/chmod-invocation.html#chmod-invocation)

### P10
`sh ./Lecture1/semester | grep last-modified > ./Lecture1/last-modified.txt` Due to permission denied in WSL, still use the `sh` commend

### Git setup
[SSH key related1](https://peteoshea.co.uk/setup-git-in-wsl/)

[SSH key related2](https://docs.github.com/en/github/using-git/caching-your-github-credentials-in-git)

[SSH key related3](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

[SSH key related4](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

[git related problem](https://evandontje.com/2020/03/03/setting-up-git-running-under-WSL/)
### P1
[Link for WSL download and config](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

[Link for issues fix](https://github.com/microsoft/WSL/issues/5325)

[Link for trip terminal](https://askubuntu.com/questions/145618/how-can-i-shorten-my-command-line-bash-prompt)

### P5
`echo '#!/bin/sh' > semester` or `echo \#\!/bin/sh > semester` for the first line, **double** quote v.s. **single quote**.
For the second line, use `>>` to append the second line content

`echo '#!/bin/sh\n' > semester`
`echo 'curl --head --silent https://missing.csail.mit.edu' >> semester`

### P6
output: `./semester: Permission denied`

### Git setup
[SSH key related1](https://peteoshea.co.uk/setup-git-in-wsl/)

[SSH key related2](https://docs.github.com/en/github/using-git/caching-your-github-credentials-in-git)

[SSH key related3](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

[SSH key related4](https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

[git related problem](https://evandontje.com/2020/03/03/setting-up-git-running-under-WSL/)
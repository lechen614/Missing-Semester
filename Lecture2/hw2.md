### P1
Use `man ls | grep "KeyWordToSearch" -C 5` to search.
And found
- Includes all files, including hidden files: `-a`
- Sizes are listed in human readable format: `-h`
- Files are ordered by recency `-t`
- Output is colorized `--color`

Use `/usr/bin` as example, so the command would be `ls -l -a -h -t --color /usr/bin `

### P2
Solution:
```
#!/usr/bin/bash
marco() {
    last_dir=$(pwd)
    echo "current directory is: $last_dir"
}

polo() {
    cd "$last_dir"
}
```
**Noted:**
- `last_dir` must be assigned with `$(pwd)`, `pwd` is a command, not a variable.
- `"$last_dir"` comes with a quote is because my directory name contained space. Without double quotes, type `polo` will get `bash: cd: too many arguments`
- Don't know why, 

### P3
Below script workds, but needs improvement
```
#!/usr/bin/env bash
count=1
./for_test_p3.sh >> output.txt 2>> output.txt
while [ $? -eq 0 ]
do
count=$((count + 1))
./for_test_p3.sh >> output.txt 2>> output.txt
done
cat output.txt
echo "repeat $count times"
```

### P4
`find . -name '*.html' | xargs -d tar cf html.tar`


### P5
`find . -type f | xargs -d ls -lt`
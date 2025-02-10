##  touch cat more
`touch` creates new file.

![](/assets/Linux/6%20Linux%20file%20commands/1.png)

`cat` views file content.

![](/assets/Linux/6%20Linux%20file%20commands/2.png)

`more` suits for files with a lot of content, which can be viewed page by page instead of displaying everything like `cat`.

![](/assets/Linux/6%20Linux%20file%20commands/3.png)

>[!TIP] 
>Press `space` to turn the page, press `q` to quit.

## cp mv
`cp` copies files and folders from one path and pastes to another path. Grammar here: `cp [-r] <path1> <path2>`.

When `cp` a folder, `-r` is a must.

![](/assets/Linux/6%20Linux%20file%20commands/4.png)

`mv` moves files and folders from one path to another. Grammar here: `mv <path1> <path2>`.

![](/assets/Linux/6%20Linux%20file%20commands/5.png)

## rm
`rm` is a fantastic command. It deletes files and folders. Just use `rm -rf <file1> <file2> ...` to destory your work. It can not only delete files and folders, but also forcely :)

I was keen on making my own virus when I was in high school. At that time I write many viruses by `Visual Basic Scripts` such as locking Desktop wallpaper or rebooting automatically. I also have a point to delete files however I was confused by the complex user permission system on Windows until now. When I met Linux, I knew my dream come true. 

>[!CAUTION] 
>Although this is just a joke (but it's damn fact), listen to me my friends, **DON'T TRY THIS COMMAND `sudo rm -rf /*` OR YOU WILL BE REGRETFUL!**

![](/assets/Linux/6%20Linux%20file%20commands/6.png)

This story tells us when you must use `rm`, be careful, think twice and don't regret. And ask yourself a question, how to delete this file properly?

## which
`which` finds files called by commands. Grammar here: `which [-a] <command>`.

*P.S. `-a` is the most frequently used parameter, and I ignored others.*

See the example below, It means `python3` and `g++` call those 2 files.

![](/assets/Linux/6%20Linux%20file%20commands/7.png)

`-a` is used to show all possible files. If you install Python 3.10.x and 3.11.x, you maybe need `which -a python3`.

## find
`find` finds files based on file name or file size. Grammar here:  `find path -name "name"` or `find <path> -size +|-n[k M G]`.

>[!TIP] 
>You should notice that `+` means `>` and `-` means `<` when based on size. Also `k` is a lowercase!*

![](/assets/Linux/6%20Linux%20file%20commands/8.png)

![](/assets/Linux/6%20Linux%20file%20commands/9.png)

## grep
`grep` is the same as `findstr` in Windows CMD. It can filter string out. Grammar here: `grep [-n] "string" <path>`.

>[!TIP]
>I suggest you always write `-n` because it shows which row it is.

![](/assets/Linux/6%20Linux%20file%20commands/10.png)

Amazing, `grep` even give "hello" a red color to emphasize.

After we learn `grep`, It is neccessary to talk about a useful symbol `|`. We have known `||` is `or` in C++. But this time we call `|` pipe symbol. It can connect 2 commands, and make the result of left command be the input of right side. Here's an example:

![](/assets/Linux/6%20Linux%20file%20commands/11.png)

## wc
`wc` counts the rows, words, bytes, characters of a file. Grammar here:`wc [-c -m -l -w] path`.

| parameter |     function     |
| :-------: | :--------------: |
|   `-c`    |   count bytes    |
|   `-m`    | count characters |
|   `-l`    |    count rows    |
|   `-w`    |   count words    |

If there isn't any parameter, `wc` will count rows, words and bytes by default.

![](/assets/Linux/6%20Linux%20file%20commands/12.png)

## echo
`echo` = `cout`, input `echo "sth"` then terminal returns sth.

If you think this section is over, it's completely wrong. There are still some important symbols.

Have you met following experience, want to define a variable and discover that it is a reserved word? What if I have to do like this? So I introduce <code> `` </code> to encircle the reserved words. Example here:

![](/assets/Linux/6%20Linux%20file%20commands/13.png)

Besides, if you have learnt Python data analysis, then you must know file read and write operations. `echo` can also perform write operations. In fact we just need 2 symbols to do our work.

`>` and `>>` connect a command and a file.

`>` overwrite the result of left command to the file on the right side.

`>>` do the similar thing but actually an append operation.

![](/assets/Linux/6%20Linux%20file%20commands/14.png)

## tail
`tail` views the end of the file and also monitor the latest changes to the file. Grammar here: `tail [-f -num] <path>`.

`-num` means any number. For example, `-5` shows the last 5 rows of the file.

`-f` indicates the activation of monitoring. `tail` will keep running, when the tracked file changes `tail` output the changed content.

![](/assets/Linux/6%20Linux%20file%20commands/15.png)

When I input `echo world >> test.txt`, left terminal output `hello \n world`. When I input `>` which means overwrite, `tail` throw an error. It told me `test.txt` is truncated. It tells us never overwrite file or `tail` will  be disabled. Moreover, there is something troublesome below.

![](/assets/Linux/6%20Linux%20file%20commands/16.png)

I delete `test.txt`, and create a new one with a word "new", but `tail` have no output. How come?

Don't be worry, we have a solution: change  `-f` to `-F`. Let's see what will happen.

![](/assets/Linux/6%20Linux%20file%20commands/17.png)

Cool. `-F` will show hints when tracked file is deleted or create.

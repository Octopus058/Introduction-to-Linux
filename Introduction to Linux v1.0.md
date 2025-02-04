# 1 Hello Linux!
## First of all
**Before the beginning of this tutorial, you must see things below.**

☞ This tutorial took over 3 weeks to complete and has 10 thousand words. Don't study with a mentality of not seeking deep understanding.

☞ This tutorial takes `Debian 12` as most examples. Maybe there are examples of Ubuntu mixed in, because I have an existing Ubuntu virtual machine and I'm too lazy to install Debian anymore. They are the same in most cases.

☞ For the universality of the tutorial, the entire text is in English. Also, It WILL help your CET6.

☞ Learn to use search engines. You can learn on CSDN: https://www.csdn.net/, the biggest Linux forum: https://www.linux.org/ or any website you want.
☞ No one is a god. There must be many mistakes in the tutorial, tell me if you find them.

☞ Abandon Windows inertia thinking. Don't be afraid of terminal, GUI is not a must. 

☞ To follow Teacher Chen's advice, this tutorial starts from the basics, and doesn't involve any third-party software. It means what we only have is terminal (However I still state an ssh software in the extra sections).
![](/assets/Linux/1%20Hello%20Linux!/1.png)

## What is Linux
Quoted from https://www.linux.org/threads/what-is-linux.4106/
>Linux is an operating system that evolved from a kernel created by *Linus Torvalds* when he was a student at the University of Helsinki. It is an operating system means that it's meant to be used as an alternative to other operating systems, Windows, Mac OS, MS-DOS, Solaris and others.
>
>Today, Linux is enjoying a favorable press for the most part. This comes from the fact that Linux has proven to be a tremendously stable and versatile operating system, particularly as a network server. When Linux is deployed as a web server or in corporate networks, its down-time is almost negligible. There have been cases when Linux servers have been running for more than a year without re-booting and then only taken down for a brief period for routine maintenance. Its cost effectiveness has sold it more than anything else. Linux can be installed on a home PC as well as a network server for a fraction of the cost of other companies' software packages. More reliability and less cost - it's ideal.
![](/assets/Linux/1%20Hello%20Linux!/2.png)

## Why Linux
As a matter of fact, Linux is convenient, isn't it? And sometimes you know, there are lots of course designs that force you to use Linux to run programs which can have run on Windows. So, as a Windows user with 10+ years of experience, I (and also you) have to learn to use Linux instead.

Moreover, I know some of you will take part in competitions about robots, All of these test your Linux usage ability. For example, raspi, nano, they mainboards is controlled through Linux. Essential, right?

## Which Linux
![](/assets/Linux/1%20Hello%20Linux!/3.png)
There are always people debating which Linux distribution is better. Actually in my opinion most of them are similar, and the kernal commands are all the same.

For we newbies, I suggest Debian. `GNOME` desktop is beautiful and familiar to Windows users. And you can find tutorials easier than archlinux or RHEL when you get troubles.
>[!NOTE]
>Why not Ubuntu? Check **EX7 I'd rather be a bookworm**!

## At last
Rome is not built in a day, and Linux can't be learnt at once. It's like your school courses which needs to review and improve constantly. Maybe it's not useful at the moment, like calculus cannot be used to buy groceries either. It WILL make a huge impact one day. Now let's say the famous saying. *Talk is cheap, show me the code!*

# 2 How to install Debian on Windows
## VMware didn't meet my expectation
Yes, I used VMware to load my Ubuntu (and also my Windows Server 2019 before). Not many reasons for me but easy and fast. There are still 2 Ubuntus in my VMware, one is used to finish the computer program course design, the other is for ISCC 2024.

However, I must say that VMware is troublesome, bugs, errors, I could see those almost every week when I had to use it. The only exciting thing to me may be a free cd-key when I was still in high school and penniless. But this year they said VMware would be totally free for individuals, so no reason to use this awful software anymore I think.

If you must use VMware, see the link below, it contains Debian 12:
https://mirrors.ustc.edu.cn/debian-cd/current/amd64/iso-cd/debian-12.9.0-amd64-netinst.iso
![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/1.png)


## WSL
No doubt that GUI is familiar to us Windows users, but not exactly to Linuxer. Try using an OS with only terminal is hard but interesting. Then WSL is the best choice.

I will give an example that installing Ubuntu 18.04.6 LTS on Windows 11.

### An example
Press  `Win + R` and input `optionalfeatures`, click "Windows subsystem for Linux" and "Virtual Machine Platform".
 ![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/2.png)
Open Microsoft Store, download Debian 12.
![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/3.png)
Press  `Win + R` and input `wt`, input `wsl --update`, then you can use Linux on Windows.
![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/4.png)
Then connect your Ubuntu with VSCode. Download `WSL` extension, connect to your Debian.
![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/5.png)
Now you can use VSCode to edit files what ever you want.

### Notice
If you want to call VSCode in the terminal, just input `code .`.
![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/6.png)
You can also check files here:
![](/assets/Linux/2%20How%20to%20install%20Debian%20on%20Windows/7.png)

# 3 C++ & Python Environment Configuration on Linux Tutorial
## C++
```
sudo apt update
sudo apt install build-essential
```
`build-essential` contains packages which C++ programs need such as `gcc`, `g++`, `cmake`, etc.

if you have edited a file `hello.cpp`, then you can compile and run it.
```
g++ hello.cpp -o hello
./hello
```
>[!IMPORTANT]  
>If you have problems when downloading dependencies of g++, check **10 Linux network commands** first then contact me.
## Python
>[!CAUTION]
>Don't use Python2, it has outdated
```
sudo apt update
sudo apt install python3
sudo apt install python3-pip
```
Remember, there are differences between Windows  and Linux. You need to input `python`, `pip3` instead of `python`, `pip`.

# 4 How to edit files on Linux
## Brief
We install Linux, aiming to write codes. Then we must know how to edit files.

On Windows, we can use lots of tools such as `notepad`, `Devcpp`, `VSCode`, `Pycharm`, etc.
However, it's not the same as Linux. Linux don't have a `notepad` anyway. At our current level, I advise you only 1 way named `Vim`.
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/1.png)


## Vim
Run commands below to install:
```
sudo apt update
sudo apt install vim
```
When editing files, just input `vim yourfilename`. If doesn't exist, `Vim` will open a new file for you. Here is the interface.
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/2.png)
`Vim` has 2 input modes and many different methods. Here, we only need to know the most commonly used insertion mode. Press `i` and you should see `--INSERT--` in the bottom left corner. After this, input and delete whatever you want!

When you think all is done, press `esc` to quit insertion mode, then input `:wq` to save and quit `Vim`.
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/3.png)
This is a table that lists various inputs and their functions.

| Input |             Functions             |
| :---: | :-------------------------------: |
|  :wq  |           save and quit           |
|  :q   |          cancel and quit          |
|  :q!  |       cancel and force quit       |
|  :e!  | cancel and open the original file |

Sometimes you need to find a function or variable in massive codes. On  Windows `Ctrl+F` helps you. Also, `Vim` has this ability. Just input `/whatyousearch`. Take a look at this example below:
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/4.png)

## Other Tools
## nano
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/5.png)
`nano` is another editor besides `Vim`, I don't like it because `Vim` is more powerful than it nearly in all aspects. If you want to learn `nano`, check this tutorial: https://blog.csdn.net/f272935657/article/details/141575478

## Gedit
`Gedit` is a light text editor. It supports various languages and its graphical interface is more like `notepad`, making it more user-friendly for `Windows` users.

However, `Gedit` has bugs for Linux without GUI, these warnings often make users puzzled (although it IS simple and will cause no mistake). So I won't use it anyway.
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/6.png)
If you want to install `Gedit`, follow the commands below:
```
sudo apt upgrade
sudo apt install gedit
gedit yourfilename
```
It should be like this:
![](/assets/Linux/4%20How%20to%20edit%20files%20on%20Linux/7.png)

# 5 Linux directory structure and commands
## Directory structure
### Top level directory
As we all know, There are some drives on Windows, we call them `top level directory`, such as `C:\`, `D:\`, etc. However, Things are quite different on Linux. There is only 1 `top level directory` named `/`. And we often call this directory structure `tree`.

You must notice that the symbols representing hierarchical relationships are different on Windows and Linux. Actually `\` on Windows and `/` on Linux. It's very easy to confuse so recite it by heart.

### Absolute path and relative path
I have teached this part in HTML tutorial, but still need to emphasize again.

Absolute path starts with `/`, and relative path starts with current directory. In actual operation we use relative path more often.

Assume we have following directory stucture:
```
home/
├── test.cpp
└── README.md
└── LICENSE
```
Here are 2 examples showing what're absolute path and relative path:

To represent `test.cpp`in absolute path, It's `/home/test.cpp`.
And for `LICENSE`, we use relative path `LICENSE` (This is relative to `test.cpp`)

Isn't it very simple? For beginners, it's easy to make mistakes. Make sure to memorize it.

### Special path symbols
Linux provides 3 `Special path symbols` for users to write file path easier. I list them in a form.

| symbol |         meaning          |     |
| :----: | :----------------------: | --- |
|  `.`   |    Current directory     |     |
|  `..`  | Previous level directory |     |
|  `~`   |         `/home`          |     |

I will explain them in more detail in the following text.

## Directory Commands
### ls
`ls` list files in current directory. Here's its grammar: `ls [-a -h -l] [path]`.
If you choose no parameter, `ls` represents displaying files in a flat layout.
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/1.png)
`-a` means show all files include those are hidden. It's easy to hide files on Linux, just add a `.` before its name such as `.bashrc`.
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/2.png)
>[!TIP] 
>Files and folders are distinguished by color in WSL, those blue names are folders.

`-l` means show files in a column with more infomation like "detailed information" on Windows.

`-h` changes `file size` in `-l` to clearer style (represent by `k`, `m`, `g`) and **must use with -l**
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/3.png)
>[!TIP] 
>parameters above can be put together like `-alh`.

As for `path` parameter, we often take following strategy: switch to the desired directory and `ls` rather than `ls desireddirectory` directly, so I won't teach it xD

###  cd
As the same as `cd` on Windows Terminal, its function is **c**hange **d**irectory. Grammar here: `cd [path]`.

There's not much to say, just pay attention to one thing that `cd` default path is `/home`. That means `cd` equals  `cd ~`  and if there's a `/home/test.cpp`, you just need to  `cd test.cpp`.

Now we finished `cd`, it's time to talk about details that weren't clear in the previous text. 
As for me, `..` is often used in `cd`. See the figure below, `cd` deafult path is `/home/oct0pu5`. I input `cd ..` twice and return `/`, then`cd etc` and `ls`, it shows all file in `/etc`. The above is the classic directory operation.
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/4.png)

### pwd
**P**rint current **w**ork **d**irectory. Often used to check whether you are in right directory, or copy the directory for any purpose.
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/5.png)

### mkdir
**M**a**k**e **dir**ectory. Grammar here: `mkdir [-p] <path>`.

If you just want to create one level folder, ignore `-p`. If more than one level is needed, `mkdir` must attach `-p`, otherwise it will throw error.
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/6.png)
 >[!IMPORTANT]
 >`mkdir` can only take effect in `/home` by default. We can solve this problem in **7 Linux user and permission commands**.
 
![](/assets/Linux/5%20Linux%20directory%20structure%20and%20command/7.png)

# 6 Linux file commands


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

`mv` moves files and folders from one path to another. Grammar here: `mv <path1> <path2>` .
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
`grep` is the same as `findstr` in Windows CMD. It can filter string out. Grammar here:
`grep [-n] "string" <path>`.

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

# 7 Linux user and permission commands

>[!IMPORTANT]
>All commands in this chapter except `su` need `sudo`!
## Permission information
There are 3 permissions on Linux: `r` for read, `w` for write and `x` for execute.

For a file or a folder, it carries permission information up to 10 characters long.The first character indicates this is a file `-`, a folder `d` or a soft link `l`. The remaining 9 characters are divided every 3 into a group. These 3 groups represent user permissions, user group permissions, and other user permissions, respectively.

Let's take an example. `drwxr-xr-x` means a folder which current user can  `rwx` and  user group and other users can only `r-x` .

## root
`root` user dominates Linux as `TrustedInstaller` on Windows. And ordinary users can only control `/home` and `r-x` the other directories.
### su
**S**witch **u**ser. Grammar here: `su - [username]`. `-` is optional in fact, but I recommend you to write it. If no `username`, `su -` switches to `root` by default.

Switching to `root` user needs password. It is entered by the user themselves when creating the system, so please don't ask others because they don't know your password neither. If you really forget it, check **EX1 How to reset root user password**.

>[!CAUTION] 
>Don't always run commands as `root` user to save efforts. It may cause unforseen problems.

To return to the user before switching, you can enter `exit`.

### sudo
We **STRONGLY** recommend everyone to use `sudo` rather than `su -` in most situations. And it's easy, just add `sudo` before commands that require permission, and it requires password for the first time.
![](/assets/Linux/7%20Linux%20user%20and%20permission%20commands/1.png)
Linux is interesting. It won't display when typing password. So recite your password, type it and press `Enter`.

## user and user group
>[!NOTE]
>I think this part is not very useful. But maybe someone need it one day.
### user group
user must be in a user group. Try 2 commands below:

`groupadd <groupname>`, `groupdel <groupname>`
### user
`useradd [-g -d] <username>` adds a user.

`-g` appoints the user group. If no then creates a user group with a same name  automatically. If such a user group has already existed, `-g` is a must.

`-d` appoints the `/home` path. If no then `/home/username` by default.

`userdel [-r] <username>` deletes a user.

`-r` deletes the `/home` path. If no then reserves it.

`id [username]` views the user group which the user belongs to.

If no `username` then views the user itself who input this command.

`usermod -aG <groupname> <username>` adds the user to the user group.

`getent passwd` views what the current users are. You can see me in the end of the output.
![](/assets/Linux/7%20Linux%20user%20and%20permission%20commands/2.png)
`getent group` views what the current groups are.

## chmod
`chmod` changes files and folders permission. Grammar here: `chmod [-R] <permission> <path>.
`-R` refers to operating all files in the folder.

`permission` parameter has lots way to write. For example, `u=rwx, g=rx, o=x` means `rwx` for user, `r-x` for user group and `--x` for others.

Moreover, there is a method of using numbers to represent permissions, which is very common. It sets `r` as 4, `w` as 2 and `x` as 1 then creates 7 kinds of combination. Just remember 7 represents `rwx` and now we have a command `chmod -R 777 path` to achieve all permission of the file or folder.

## chown
`chown` changes user and user group to which file and folder belong. Grammar here: `chown [-R] [username] [:] [groupname] <path>`.

`-R` is the same as `chmod`. `[:]` split user and user group.

Not very useful in my opinion :/

# 8 Tricks for a real Linuxer
## clear
Sometimes the terminal looks really messy and you cannot find the information you need at a glance. Now we have `clear` to bring a clean screen back. It proves effective every time!
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/1.png)

>[!TIP] 
>More than that, `Ctrl+l` is the same as `clear`.*

##  `tab`
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/2.png)
I should input `test1.cpp` normally but if I press `tab` ternimal will 
help me complete it automatically. `tab` do save plenty of time when you have to input some long commands.
## Search for commands with `↑` and `↓`
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/3.png)
I `vim test1.cpp`, what if I find a mistake? I have to type this command again, too troublesome. But if I press `↑`, it will appear directly. `↑` and `↓` is a quick way to search history. I will introduce more in the following section **history**.

## history
Want to view previous commands? Feel slow for `↑` and `↓`? `history` is capable of this task. In most situtaion we only need `history num` and `num` is the number of commands you want to view.
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/4.png)

## ll
Do you feel inconvenient when inputting  `ls -l`?  Linux gives us an upgrade plan `ll`. `ll` equals to `ls -l` and it's shorter to type.
Also you can try `ll -h` which is the same as `ls -lh`.
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/5.png)

## `Ctrl` combination keys
### `Ctrl+C`
Always remember `Ctrl+C` is NOT copy on Linux. It is a `key interruption` to kill the process. 

A simple example is, when you want to delete the database and resgin you need `sudo rm -rf /*`. What if you suddenly change your mind during the process? *Damn I must kill it RIGHT NOW!* Then `Ctrl+C` helps you to save those poor remaining files. But shouldn't be able to save your career.

### `Ctrl+Z`
Many confuse `Ctrl+Z` and `Ctrl+C`, regard them as the same but actually not. `Ctrl+Z` freezes, or suspends the process. That is to say you can restore this process, using `fg`.
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/6.png)
In the figure above, we suspend  `python3` with `Ctrl+Z` then restore it with `fg`. If it is `Ctrl+C` `python3` will be killed.

### `Ctrl+D`
`Ctrl+D` exits some status. We often use it to exit `root` user or compilers.
![](/assets/Linux/8%20Tricks%20for%20a%20real%20Linuxer/7.png)
I input `Ctrl+D` after `su -` and `python3`. Quite convenient.

### `Ctrl+A` / `Ctrl+E`
`Ctrl+A` moves the cursor to the beginning of the row, and  `Ctrl+E` the end. They save time to click the mouse or hold `←` and `→`.

### `Ctrl+S` /  `Ctrl+Q`
Always remember `Ctrl+S` is NOT save on Linux. (I said familiar words in the section `Ctrl+C`)  It freezes the terminal. And `Ctrl+Q` unfreezes.

What can they be used for? If you `tail -F` a file and a large amount of text is written suddenly, to investigate the specific content, you will freeze the terminal first. After you figure it out, unfreeze it and continue to observe the following situation. So we can say `Ctrl+S` and  `Ctrl+Q` helps look through the content displayed on terminal.

# 9 Some trivial contents on Linux
## Installing softwares
>[!IMPORTANT]
>It has differences between Debian and CentOS in this section!

Why Linux is hard to a newbie? I think it has a lot to do with the hassle of installing softwares. On Windows, users open Microsoft Store or Google Chroom, click "Download"  button and run the `.exe` at most. But it seems quite troublesome on Linux. Though many softwares provide `.deb` or other forms of installing packages on their website, most people ignore them. That's a pity.

But don't worry, we can still install using our terminal.

Next, I will take Ubuntu as an example because CentOS has stopped maintenance and there may be unforseen problems.

`apt(-get) [install | remove | search] <name>` helps install or uninstall softwares. Also it needs `root` permission so we  add `sudo` .

Some software dependency libraries have been updated, but the software dependency list has not been updated. Then you need to download a single package. Use `wget url`. I will provide a more detailed explanation in **10 Network commands on Linux**.
![](/assets/Linux/9%20Some%20trivial%20contents%20on%20Linux/1.png)

## Soft link
A soft link on Linux is like a shortcut on Windows.  Grammar here: `ln -s src dest`.
![](/assets/Linux/9%20Some%20trivial%20contents%20on%20Linux/2.png)

## date
`date` views system time. Grammar here: `date [-d]  [+format]`.
`-d` is used to calculate time, not very useful in my opinion.
Remember `+format` needs quotation marks when there is a space. Here's a form including all time formats:

| format |            meaning             |
| :----: | :----------------------------: |
|   %Y   |              year              |
|   %y   | the last 2 numbers of the year |
|   %m   |             month              |
|   %d   |              day               |
|   %H   |              hour              |
|   %M   |             minute             |
|   %S   |             second             |
![](/assets/Linux/9%20Some%20trivial%20contents%20on%20Linux/3.png)

# 10 Linux network commands
## IP and hostname
IP is your network address if you are connected to the internet. It's divided into IPv4 and IPv6. Our country use IPv4 more often from a data perspective. Hostname is the OS name. Others on the internet find you by your IP and hostname.

Input `ifconfig` and the terminal shows lots of information. Pay attention to `eth0`, you will find `inet`, the following is IP.
![](/assets/Linux/10%20Linux%20network%20commands/1.png)
Input `hostname` to check your hostname. Or there's an easier way, your hostname is behind "@" on the terminal.

If you aren't satisfied with this name. *When did I come up with such a reckless name!* Don't worry, you can certainly change it. `hostnamectl set-hostname <name>` saves your young soul. Like this:
![](/assets/Linux/10%20Linux%20network%20commands/2.png)
## ping

`ping` checks whether the server is connectable. Grammar here: `ping [-c num] <ip/hostname>`.
`-c num` decides how many times you `ping`. If no then infinite.
![](/assets/Linux/10%20Linux%20network%20commands/3.png)
`ping` can not only determine if the server is functioning properly, but also you are connected to the internet. Abviously you won't `ping` anything when offline.

## wget
`wget` is a powerful command to download things from the internet. It has many parameters that can't be omited into a sentence. Howevere, we can talk about a few of the most commonly used ones.

`-O` renames files you download. Like this: `wget oct0pu5.cn -O oct0pu5.html`.

`-i` makes `wget` can download mutiple files  like `pip install -r`. Make a `requirements.txt` if is needed, and input `wget -i requirements.txt`.

When the file is very large, it spends a long time. Also, Linux maybe throw errors during transmission. We can add `-b` to download in the background and `-c` to achieve file breakpoint resume. Now I will explain both separately.

`wget -b url` are used together with `tail -F` generally. `wget-log` shows the progress. In this example `index.html` is downloaded in the blink of a eye so `wget-log` is empty.
![](/assets/Linux/10%20Linux%20network%20commands/4.png)
`wget -c [-t num] [-T num] url` avoids the issue of file download interruption. `-t num` is the times of retry. If no then infinite. `-T num` is timeout waiting time. `wget` will retry if timeout waiting time is exceeded.

## curl
>[!TIP]
> Debian may require self installation of `curl`. Input `sudo apt install curl`.

`curl` send a web request. Grammar here: `curl [-O | -o rename] <url>`.
`-O` is a must if downloading files. `-o` renames the file.

I have to say again that the main function of `curl` is sending web requests, downloading files is just a part. So I suggest you to use `wget` more currently.

## Port
Port is the interface for computer interaction. Our familiar USB, VGA are all physical ports. And we also have virtual ports in computer OS. Linux has 65536 ports. They are 0 to 65535 and divided into 3 parts.

| port number |                    usage                    |
| :---------: | :-----------------------------------------: |
|   0-1023    |     Called by system built-in services      |
| 1024-49151  |            Users can call freely            |
| 49152-65535 | Used for temporary network connection calls |
### netstat
`netstat` can check the port occupancy status. use `netstat -tunpl` to show all information you need. Prototype, local address, ports, states and PID, everything is in sight.
![](/assets/Linux/10%20Linux%20network%20commands/5.png)

# 11 Linux process commands
## Process
Applications are managed by OS. OS registers process for a running application and a unique PID for every process.

## ps
`ps -ef` shows all information of all process.
![](/assets/Linux/11%20Linux%20process%20commands/1.png)
`UID` is the user to which the process belongs. `PPD` is the `PID` of parent process. `C` is CPU usage. `STIME` is the start time. `TTY` is the number of start terminal, if not terminal startup then "?". `TIME` is the time that process occupies CPU. `CMD` is the path or commands.

## pstree
`pstree` is more like an upgraded version of `ps`. It shows process in a tree structure.
![](/assets/Linux/11%20Linux%20process%20commands/2.png)
You can see the `pstree` is controlled by `bash`.

## kill
`kill` closes the process. Grammar here: `kill [-9] <PID>`.
`-9` means close forcely (or kill). 

`kill` is usually used together with `ps`. See this example:
![](/assets/Linux/11%20Linux%20process%20commands/3.png)
I `tail -F` a file and `kill` it. It shows "Terminated" which means it closes itself. And when `kill -9` "Killed" means OS closes it forcely.

## top
`top` monitors process information in real-time. `top` refreshes every 3 seconds by default. We usually use `top -i` to ignore those inactive process.
![](/assets/Linux/11%20Linux%20process%20commands/4.png)
Look, I am `vim`-ing a file. And there're more left. 

First row, `top` shows OS time, how long the OS has run, how many users have logged in and `load average` is system load in 1, 5 and 15 minutes.

Second, how many tasks, how many of them are running, sleeping, have stopped or are zombie process.

Third, `%CPU(s)` is CPU usage. `us` is user CPU usage. `sy` is system CPU usage. `ni` is the ratio of CPU time occupied by high priority processes. `id` is free CPU usage. `wa` is I/O waiting CPU usage. `hi` is CPU hardware interrupt rate. `si` is CPU software interrupt rate. `st` is forcely waiting CPU usage.

Fourth and fifth, `Mem` is physical RAM and `Swap` is virtual RAM.

Continuing downwards, there is a row of headers. `PR` is the priority, the smaller the higher. `NI` is also the priority, positive represents low, 0 represents medium and negative represents high. `VIRT`, `RES` and `SHR` represent virtual, physical and shared memory. `S` is process status. `S`, `R`, `Z`, `N`, `I` is sleeping, running, zombie, low priority and idle. `%CPU` and `%MEM` is CPU and memory usage. `TIME+` is the time that process occupies CPU.

# 12 Linux environment variables
## Environment variable
Environment variables are parameters which specify OS runtime environment. It counts a lot and is usually global. A common example is that the installer asks if add environment variables automatically when you are installing Python. If there are no environment variables, Python can't find most of its libraries. In other words, how could it work!

## env
`env` views all environment variables on Linux.
![](/assets/Linux/12%20Linux%20environment%20variables/1.png)
I only showed a part of it. There are some points we should understand.
`USER` is current user. `PWD` is current directory. `HOME` is current user's `/home`. `PATH` contains directories of all executable files.

## $
`$` represents taking variable values. When characters are connected together, `{}` needs to be added. Like this:
![](/assets/Linux/12%20Linux%20environment%20variables/2.png)

## Add environment variables
There are many ways to add environment variables, including temporary and permanent ones.

`export var=<value>` temporarily adds a environment variable. It is only valid in the current terminal.
![](/assets/Linux/12%20Linux%20environment%20variables/3.png)
And 2 ways to add permanently. Write `~/.bashrc` for current user or `/etc/profile` for all users. Then run `source thatfile` to make it effective.
![](/assets/Linux/12%20Linux%20environment%20variables/4.png)
![](/assets/Linux/12%20Linux%20environment%20variables/5.png)
By the way, you can see codes below in `.bashrc`:
![](/assets/Linux/12%20Linux%20environment%20variables/6.png)
You can input `ls --help` for more information about `ls`, and also write `alias lh='ll -h'` to create your own commands.

# 13 Linux compression commands
## Murmurs
I personally feel that compression and decompression related commands are one of the most troublesome contents in this tutorial. But we still have to overcome difficulties. There is a good news that this chapter is the end of the main part of the tutorial (but not the end of your Linux learning road :D). I know you must be tired but cheer up!

## tar
Before the commands, let's understand the types of compressed files on Linux first. `.zip` is the same as Windows, but not the most common. `.tar` and  `.tar.gz` are created by `tar` and `gzip`. **They are the most commonly used form.**

But wait, do you think of a question. Why Windows prefers `zip` but Linux not? Why not the two OSs unify compression format?

It's definately a good question. Linux allows `.zip` or `.7z` without problems. But they have a fatal disadvantage that they CANNOT storage Linux permission information (do you still remember it?). Therefore, `tar` is irreplaceable in a sense. Even the backend of `tar` can be changed to `zip` or `7z`, but they lose the battle with `tar` on Linux.

Now we can introduce our best friend `tar` formally. Strictly speaking `tar` isn't a kind of compression, it archives files in fact. `tar` puts files into a package without too much compression. The true implementation of compression or decompression is `gzip`. Moreover, `gzip` is also an compression algorithm. In other words, we call this the backend of `tar`.
>[!TIP]
>There are more algorithm except `gzip`, but it's commonly used.

Here's the grammar: `tar [-c | -v | -x | -f | -z | -C] <file1> <file2> ...`.
`-c` is compression. On the contrary `-x` is decompression.
`-v` shows the progress.
`-f` is followed by files, it's required in most cases.
`-z` opens `gzip` mode which means it will create `.tar.gz`.
`-C` changes the destination of decompression.
I recommend you to put `-z` at first (if there's `-z`) and `-f` at last to avoid errors.

I compressed 3 c++ files and  decompressed them into `~/decompression`. Don't forget to `mkdir` or it will throw error!
![](/assets/Linux/13%20Linux%20compression%20commands/1.png)
There is a tip in the figure above. `-zcvf` can be decompressed by `-xvf` and `-zxvf`, but `-cvf` can be only decompressed by `-xvf`. It's easy to make mistakes here. My suggestion is to compress everything in `gzip` format.

## More to say
I was planning to talk about `zip`. `zip` is more familiar to Windows users, but in order to avoid the bad habit of only using `zip`, I decided not to introduce it. If you have to use it, check this blog: https://blog.csdn.net/weixin_49114503/article/details/132812358. But  remember, `zip` isn't easier than `tar`.

After learning this chapter, you should know what it is. Don't ask similar silly questions again.
![](/assets/Linux/13%20Linux%20compression%20commands/2.png)

## The end
At this point, the main part of this tutorial is basically completed. If you can persist in seeing this, it's already very difficult. Linux is like a delicate handicraft, not a massive object like Windows. And this is just the reason why it wins love of programmers. Please always remember it's a tool, not a lock. We learn Linux for better programming, not for showing off and putting it aside. I hope that by studying this tutorial, you can adjust your mindset, not only Linux, but also any problems encountered in learning.

Actually, writing this tutorial is largely due to Teacher Chen's request. I happen to be bored during the holidays, so I write a bit every day. I find it quite interesting during this, and I can also review a lot of grammar that I have forgotten, killing two birds with one stone. The next tutorial should be CSS, it's been a long time since I last updated it! Well, see you next time xD

# EX1 SHIT, I forgot my password again!
## WSL
This is one reason why I recommend WSL. Open `Powershell` or `Windows Terminal`, input `wsl -u -root`. Ignore the warnings (If there are) then WSL becomes active and you are the root user. And `passwd <username>` helps a lot.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/1.png)

## Not WSL?
### Terminal
If you still remember the password of your account, the problem will be much simpler. Input `sudo passwd root` and the terminal will ask password of the current user.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/2.png)
But what if you even forget your own password? You want to `su -`  to reset your password and need your password to reset root user password. This is trapped in a `while(1)` endless loop. So we can only take out our last resort.
### GRUB
Take Ubuntu as an example. Boot Ubuntu and hold `shift` to enter `GRUB` (like `BIOS` on Windows) menu. Select **Advance options for Ubuntu.**
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/3.png)
Select **recovery mode**.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/4.png)
Wait a second and select **Drop to root shell prompt**.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/5.png)
Then `passwd` and input your new password. Ignore the error that I accidentally pressed a `space`.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/6.png)
After that, select **Resume normal boot**. You can use it normally now.

# EX2 MobaXterm, go ssh it!
>[!TIP]
>Check this blog for more detail: https://blog.csdn.net/erciguihua/article/details/144258751.

## Before the beginning
>[!CAUTION]
> Your Windows version must be at least Windows11 22H2. That means your laptop is bought at least after June, 2023 or you must upgrade your Windows.

Create `.wslconfig` in `C:\Users\<username>` on Windows. After that write codes below:
```
[wsl2]
networkingMode=mirrored
dnsTunneling=true
firewall=true
autoProxy=true
[experimental]
autoMemoryReclaim=gradual  
```
Also, Open the Powershell and try these 2 commands below. One of them is effective.
```
Set-NetFirewallHyperVVMSetting -Name ‘{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}’ -DefaultInboundAction Allow 

# or

New-NetFirewallHyperVRule -Name MyWebServer -DisplayName “My Web Server” -Direction Inbound -VMCreatorId “{40E0AC32-46A5-438A-A0B2-2B479E8F2E90}” -Protocol TCP -LocalPorts 80
```
It will not only solve problems such as *WSL in NAT mode doesn't support `localhost` proxy* and IP address for WSL changes frequently.

For more information, check this blog: https://blog.csdn.net/2301_81697902/article/details/137481359.
## Downloading and cracking
This is the official website: https://mobaxterm.mobatek.net/ and the Chinese version: https://github.com/RipplePiam/MobaXterm-Chinese-Simplified. I take the original version as an example. 
![](/assets/Linux/EX2%20MobaXterm,%20go%20ssh%20it!/1.png)
Next, we will start to generate a key to crack it. Check this repository: https://github.com/flygon2018/MobaXterm-keygen.

Open it with your VSCode  (If you don't have VSCode, Pycharm is also ok). Create a new terminal in current path. Input `Python MobaXterm-Keygen.py <username> <version>` then It will generate a `Custom.mxtpro`. move it into MobaXterm folder and it's done.

`username` can be named arbitrarily and `version` is up to your MobaXterm version. 
![](/assets/Linux/EX2%20MobaXterm,%20go%20ssh%20it!/2.png)
And you can open MobaXterm and click `About` to check it.
![](/assets/Linux/EX2%20MobaXterm,%20go%20ssh%20it!/3.png)

## Usage
Open  `Session` and choose  `WSL`. Change `Distribution` to `Debian`. Then you can connect to WSL by MobaXterm.
![](/assets/Linux/EX2%20MobaXterm,%20go%20ssh%20it!/4.png)
Left side is a `SFTP` window and right side is the terminal. Now you can download files from WSL to Windows or toggle files from Windows to WSL. If you have used WinSCP or Filezilla, this feeling is very familiar.

Next, you can adjust the settings freely. I highly recommend you to enable  'Paste using right-click'. MobaXterm does not enable this option by default, which makes copying terminal information more inconvenient.
![](/assets/Linux/EX2%20MobaXterm,%20go%20ssh%20it!/5.png)
More than that, you can also press 'Remote monitoring' and the bottom of the main window. It monitors hardware information of WSL.

Last but not least, you can split your screen into 2 or even 4 terminals. Just hit the `Split` button.

# EX3 I upgraded alone
>[!TIP]
>This chapter is for Ubuntu user. Check this blog: https://blog.csdn.net/no1xium/article/details/127012204

## Before the beginning
Before writing this tutorial, I use Ubuntu 18.04 rather than Debian. Actually it's the first Linux OS I met. If you are the same as me. Good luck! This tutorial will help you a lot.

Someone asks me why not Ubuntu 24.04. My answer is that it changes some OS file paths and may cause the tutorial to become separated. So the best choice for me is to update to 22.04.

Do you have upgraded Windows? Taking the example of upgrading from Windows 10 to Windows 11, you are just daydreaming if your mainboard doesn't support TPM2.0. So we can say there are barriers blocking you to upgrade even if they are to some extent ensuring your safety.

What about Ubuntu? In terms of installation, there is no problem, but there may be various situations where the dependencies' versions do not match. My suggestion is to change `apt` source, run `sudo apt update` and `sudo apt upgrade` these three steps. Now we can start upgrading now.

## Upgrading
No OS allows cross level upgrades. So we have to upgrade twice. To 20.04 first, then to 22.04.

Check **EX2 MobaXterm, go ssh it** and change your `apt` source to TsingHua source first. Then run following commands to ensure all packages are the newest and `update-manager-core` is installed.
```
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt install update-manager-core
```
After that, input `sudo do-release-upgrade` and start. **Follow the requirements.** For example, if terminal pops up a message like:
```
You have not rebooted after updating a package which requires a reboot. Please reboot before upgrading.
```
Just `sudo reboot` and type `sudo do-release-upgrade` again.
>[!TIP]
>Some WSLs will show messages below:
>![](/assets/Linux/EX3%20I%20upgraded%20alone/1.png)
>You need to change `Prompt=never` to `Prompt=lts` in `/etc/update-manager/release-upgrades`. Here's the meaning of `lts`:
>![](/assets/Linux/EX3%20I%20upgraded%20alone/2.png)

How long will it take!
![](/assets/Linux/EX3%20I%20upgraded%20alone/3.png)
Thanks to TsingHua source, it just spent less than half an hour. After rebooting input `cat /etc/os-release` and it should be like this:
![](/assets/Linux/EX3%20I%20upgraded%20alone/4.png)
If you see errors below, input `sudo vim /etc/wsl.conf` and paste these codes:
```
[interop]
appendWindowsPath=false
```
![](/assets/Linux/EX3%20I%20upgraded%20alone/5.png)

## Examine `apt`
Input `sudo vim /etc/apt/sources.list` and ensure the content is:
```
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse

# 以下安全更新软件源包含了官方源与镜像站配置，如有需要可自行修改注释切换
deb http://security.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse
# deb-src http://security.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# # deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
```
Then run `sudo apt update`.

## To the end
Do as the same as before, upgrade Ubuntu to 22.04 LTS. I only spent about 20 minutes. Rebooting is required but you actually don't need to do it. Input `yN` and WSL will reboot in background for 5 seconds then you can use the terminal as usual.

All looks fine except one thing, your Powershell. Run `wsl -l -v`, Powershell still regard your WSL as Ubuntu 18.04. It won't cause much problems but we can solve it quickly. Do as the following steps.
```
wsl --export Ubuntu-18.04 ubuntu22.04.tar
wsl --unregister Ubuntu-18.04
wsl --import Ubuntu-22.04 <yourtarpath>
wsl --set-default Ubuntu-22.04
```
Then `wsl -l -v`, it will be `Ubuntu-22.04`. You can delete the `.tar` now.

We do all these work just to avoid downloading Ubuntu 22.04 from the Microsoft Store again. That WILL be as fast as a turtle compared to upgrading with the terminal. Also, you can experience the beauty of terminal jumping line by line that is difficult to Windows GUI.
![](/assets/Linux/EX3%20I%20upgraded%20alone/6.png)

# EX4 No, the C drive is almost full!
>[!TIP]
>You can check the following blogs for more information:
>https://huaweicloud.csdn.net/6707a519e2ce0119e0a1c650.html
>https://blog.csdn.net/a772304419/article/details/130932469
>https://www.jianshu.com/p/83f8f800c3a2
## Logs, temporary files and cache
### Logs
Debian log files are in `/var/log`. Sometimes a huge amount of log files can be generated and they are useless. So you need to manually clear them to free up disk space.
![](/assets/Linux/EX4 No,%20the%20C%20drive%20is%20almost%20full!/1.png)
You should clean `syslog` and `journal/` in the picture above.

> [!CAUTION]
> If you are worried about `rm`, `mv` logs to a new folder and `rm -rf` this folder.

For `syslog`, just `rm` it. For `journal/`, run commands below:
```
sudo systemctl stop systemd-journald
sudo rm -rf /var/log/journal/*
sudo systemctl start systemd-journald
```
Then use `journalctl` to restrict logs, like  `sudo journalctl --vacuum-time=1w` deletes all journals saved for more than a week and `sudo journalctl --vacuum-size=50M` deletes all journals bigger than 50M.
## Temporary files and cache
Temporary files are in `/tmp` and `/var/tmp`. User cache is in  `~/.cache`. `rm` them.

`sudo apt autoremove` and `sudo apt autoclean` cleans those useless packages.

## Transfer WSL out of C drive
After above work. You have saved tons of space successfully but WSL still occupies tens of gigabytes of space on your C drive. Is there a permanent ultimate solution? The answer is YES! You can transfer your WSL out of C drive.

Take Ubuntu 22.04 as an example. Run `wsl --shutdown` in Powershell first. Then `wsl --export Ubuntu-22.04 D:\Ubuntu-22.04.tar`. That export your WSL as a `.tar` file to D drive.
> [!TIP]
> The name is up to your WSL name. You can input `wsl -l -v` to check it.
> ![](/assets/Linux/EX4 No,%20the%20C%20drive%20is%20almost%20full!/2.png)

Then `wsl --unregister Ubuntu-22.04` and import the transferred one. `wsl --import Ubuntu-22.04 D:\WSL D:\Ubuntu 22.04.tar`. The `.tar` file can be a backup for your WSL or you can also delete it.


If you find your user config is missing and only root exists, run `ubuntu22.04.exe config --default-user <yourusername>` to solve this problem.

# EX5 What's the first word when messing up a command
## Before the beginning
Let's see a picture first.
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/1.png)
I don't know if you often type 1 or 2 letters of a command incorrectly. If no, Congratulations. You are enough careful. But if yes, you're like most people who need to retype the entire command or press `↑` and start moving the cursor to modify incorrect letters. This is tiring, isn't it? I hoped to make a change. And it came true when I found a repository on GitHub named `thefuck`. Forget the NSFW, `thefuck` is interesting.

## thefuck

> `thefuck` is a  magnificent app which corrects your previous console command.

See this demo:
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/example.gif)
Right. It has magic when you saw the demo. And you naturally opened the issues, saw the following scene:
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/2.png)
You won't believe that the repository you just found is already on the brink of death. Until you found this:
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/3.png)
To be frank, I felt terrible. There are so many repositories received huge amount of issues and PRs, but were ignored by maintainers. I really don't know why, but it IS an inevitable problem in the open source industry.

However, the light hasn't gone out yet. Just as they said in issues, there's an active project working on it. It is  `Pay Respects`. We can still say `fuck` to those wrong letters. I think it is the most reassuring thing to us.

## Pay Respects
I asked the author 4 questions. He answered me respectively.
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/4.png)
Now we have gained a basic understanding that, `Pay Respects` aims to replace `thefuck` with its faster speed and more accurate identification. But now it hasn't been on Debian, or Ubuntu in other way. Does this mean that we are unable to use it? Absolutely no. I found `.deb` from the releases. We can certainly install it on Debian!

Input `arch` on WSL and you should receive `x86_64`. This represents you have an Intel 64 CPU, or `AMD64` in a more formal way. Download `pay-respects_0.6.11-1_amd64.deb` from the releases page and you can start to install it on WSL.
>[!IMPORTANT] 
>As of the completion of this tutorial, the latest version of `Pay Respects` is `0.6.11`, it will update and don't be a nerd.

Toggle the `.deb` into Debian rather than simply `wget` it due to the risk of download failure caused by intermittent access to GitHub. 
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/5.png)

Run `sudo dpkg -i pay-respects_0.6.11-1_amd64.deb` to install `.deb`.
> [!IMPORTANT] 
> If you are using Ubuntu 18.04, It will throw errors that the `libc6` dependency is lower than the required version like this:
> ![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/6.png)
> Of course you can update `libc6`, but I think there will be unforseen problems if crossing too many versions because `libc6` is a OS dependency. So the safest way is upgrade your Ubuntu. Check **EX3 I upgraded alone** for more information.
> 
> However, I am currently using Ubuntu 22.04 and my `libc6` version is 2.35, still lower than the requirement. For Ubuntu 24.04 it is 2.39 but I don't want to upgrade to 24.04. So I upgraded `libc6` forcely. Add `deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main` to `apt` source temporarily. It's actually `apt` source for Ubuntu 24.04. We will borrow it to update `libc6`. Run `sudo apt update` and `sudo apt install libc6` but **remember not to run `sudo apt upgrade`**. After the installation  run `ldd --version` to check if it is 2.39. 
> 
> There are 2 more things to pay attention to, `libssl3t64` is missing but you can try `sudo apt --fix-broken install`, `build-essential` is broken because of the change of `libc6` but `sudo apt build-essential` makes sense. The last step is to annotate the source of Ubuntu 24.04.

After works above, add this to your `.bashrc` and don't forget to `source` it.
```
eval "$(pay-respects bash --alias)"
```
Now you can pay respects with confidence!
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/7.png)

# EX6 The way to pretend B
>[!NOTE]
>Sorry for my Chinglish but it's really funny.

## fastfetch
### Why `fastfetch` rather than `neofetch`
If I say `neofetch`, most of you must know it's a tool which fetches system information and prints it prettily. 
![](/assets/Linux/EX6%20The%20way%20to%20pretend%20B/1.png)
However, the last release of `neofetch` is in 2020, and its repository have been archived since Apr 26, 2024. I understand that it won't make many mistakes in at least 10 years but there are still reasons to choose `fastfetch` instead. Here I quote the statement in its README.
>Q: Neofetch is good enough. Why do I need fastfetch?
>1. Fastfetch is actively maintained.
>2. Fastfetch is faster. As the name suggests.
>3. Fastfetch has a greater number of features, though by default fastfetch only has a few modules enabled; use `fastfetch -c all` to find what you want.
>4. Fastfetch is more configurable. You can find more information in the Wiki: [https://github.com/fastfetch-cli/fastfetch/wiki/Configuration](https://github.com/fastfetch-cli/fastfetch/wiki/Configuration).
>5. Fastfetch is more polished. For example, neofetch prints `555 MiB` in the Memory module and `23 G` in the Disk module, whereas fastfetch prints `555.00 MiB` and `22.97 GiB` respectively.
>6. Fastfetch is more accurate. For example, [neofetch never actually supports the Wayland protocol](https://github.com/dylanaraps/neofetch/pull/2395).


### Installation
As the same as `pay-respects`, just download `fastfetch-linux-amd64.deb` from GitHub releases page and put into your Ubuntu by MobaXterm. Then run `sudo dpkg -i fastfetch-linux-amd64.deb` and all done.

### Usage
Input `fastfetch` and you will obtain all you want.
![](/assets/Linux/EX6%20The%20way%20to%20pretend%20B/2.png)
Someone careful may ask, Does `fastfetch` safe because it seems to leak IP address. Here we must clarify that IP begins with `10`, `172` or `192.168` is a local address and nothing to do with user privacy. If you insist on it, then you have to `fastfetch --gen-config` and disable  `Local IP` in `~/.config/fastfetch/config.jsonc`. You can also see this part in GitHub README.

## btop
I think `btop` is the coolest `top` to monitor OS resource. It's in `apt` source.
![](/assets/Linux/EX6%20The%20way%20to%20pretend%20B/3.png)
There is only 1 more thing you need to know that if you experience screen flickering during `ssh` connection, press `o` and turn `Truecolor` to false.
![](/assets/Linux/EX6%20The%20way%20to%20pretend%20B/4.png)

## fzf
`fzf` is Fuzzy Fliter, an extraordinary tool to replace `find`. And it's already in the `apt` source.
![](/assets/Linux/EX6%20The%20way%20to%20pretend%20B/5.png)
What's more, it supports previewing file contents. Inputting something like `fzf --preview='cat {}'` must amaze you.
![](/assets/Linux/EX6%20The%20way%20to%20pretend%20B/6.png)
If you think it's over, you're completely wrong. Remember what's the meaning of `$`? Try `vim $(fzf --preview='cat {}')`, select a file and press `Enter`, don't forget to take a picture of your surprised big mouth.

# EX7 I'd rather be a bookworm
>[!IMPORTANT]
>This chapter was written after Introduction to Linux v0.9, some of my view had changed a lot during this period.
## Ubuntu was supposed to die
You will never know how long I take to determine my mind to change my Ubuntu to Debian.

Since my first encounter with Linux, I have been using Ubuntu 18.04 LTS. But it's too old, I have to move forward. I've heard that Canonical insists on promoting its garbage `snap`. Even willing to give up the spirit of open source to replace the position of `apt`. What are you thinking Canonical? `snap` is just a disaster, it's slower and fatter than `apt`. But `snap` has replaced `apt` on the newest Ubuntu. When you `apt install`  something, you will get a `snap` package. Yes, Canonical CAN cheat user, deny open source spirit, I don't know what CAN'T Canonical do?
![](/assets/Linux/EX7%20I'd%20rather%20be%20a%20bookworm/1.png)
This all happens on Ubuntu 24.04, but if i choose 22.04 LTS? Well, 'Install `snap`?' popped up when I was upgrading my Ubuntu, which made me felt sick.

I can't deny that Ubuntu has made many presets, which are very convenient, or Ubuntu is the first Linux OS for most users. I used to have a great impression of Ubuntu too until this: https://news.itsfoss.com/ubuntu-24-04-disappointment/. Ubuntu has gone too far, it not only goes beyond the scope of Debian redistribution, but also breaks rules of open source. In my opinion, Ubuntu is like Fritz Haber, got remarkable achievements but eventually lost oneself and suffered the consequences. I have to say, **Canonical, GO FUCK YOURSELF!**

Moreover, see what Richard Stallman said 11 years ago: https://www.youtube.com/watch?v=CP8CNp-vksc.

## Clean up our act
Never forget Ubuntu is just a Debian distro. So why not choose Debian instead? Debian is safer, stabler and healthier. You can download it just in WSL.
![](/assets/Linux/EX7%20I'd%20rather%20be%20a%20bookworm/2.png)
Every commands are almost the same. Remember to change `apt` source and `apt update && apt upgrade`.
>[!IMPORTANT]
>Tsing Hua source have certification problems so I recommend you to use USTC source instead.
>
>```
> # 默认注释了源码仓库，如有需要可自行取消注释
>deb http://mirrors.ustc.edu.cn/debian bookworm main contrib non-free non-free-firmware
># deb-src http://mirrors.ustc.edu.cn/debian bookworm main contrib non-free non-free-firmware
>deb http://mirrors.ustc.edu.cn/debian bookworm-updates main contrib non-free non-free-firmware
># deb-src http://mirrors.ustc.edu.cn/debian bookworm-updates main contrib non-free non-free-firmware
>
># backports 软件源，请按需启用
># deb http://mirrors.ustc.edu.cn/debian bookworm-backports main contrib non-free non-free-firmware
># deb-src http://mirrors.ustc.edu.cn/debian bookworm-backports main contrib non-free non-free-firmware
>```

Besides, There are very few pre-installed software packages, such as `vim`, `net-tools`, etc. They need to be installed by yourself. And there are no aliases like `ll` either. You can write them in `.bashrc`.

# EX8 Return to Paradise
## Before the beginning
When I was writing **EX2 MobaXterm, go ssh it!**, I tried to make a `GNOME` desktop for Ubuntu. But I failed after more than 2 days' work. This time I chose `Plasma` instead and it worked finally. But it can be improved that the GUI desktop is a bit laggy. I think the reason is WSL itself.
![](/assets/Linux/EX8%20Return%20to%20Paradise/1.png)
More than that, it's a windowed, not a fullscreen application controlled by `Xephyr`. And I don't know why it can't rename files (even if I boot it with `sudo`).

But no matter what, it was a big success, declaring that I have basically solved the GUI problem of WSL. Next step I may change the desktop to relatively lighter `xfce` to see how smooth it will be and decide exactly which should be used.

## Installation
>[!NOTE]
>Check this blog for more information: https://ivonblog.com/posts/run-linux-desktop-on-wsl/.

`GNOME` desktop need `systemd`, WSL is supposed to support `systemd` but there's lots of bugs so we have to abandon it and choose `KDE`.

`Plasma` is smaller than the ordinary `kubuntu`, just `apt install plasma-desktop`.

Next we need `Xorg` and `Xserver`, input commands below:
```
sudo apt install xorg
sudo apt install xserver-xephyr
```
Set the environment variables to enable Xephyr to function properly.
```
echo "export XDG_SESSION_TYPE=x11" >> ~/.profile
echo "export GDK_PLATFORM=x11" >> ~/.profile
echo "export GDK_BACKEND=x11" >> ~/.profile
echo "export QT_QPA_PLATFORM=xcb" >> ~/.profile
echo "export WAYLAND_DISPLAY=" >> ~/.profile
 
source ~/.profile
```

## Run
Here are 2 commands you need to run. And `export DISPLAY=:0` before the first one. Similarly, `export DISPLAY=:1` before the second.
```
Xephyr -br -ac -noreset -resizeable -screen 1920x1080 :1 &
sudo dbus-launch --exit-with-session startplasma-x11 &
```
>[!IMPORTANT]
>Don't change the resolution to 2560x1440, a windowed application can't fill the screen properly. Besides, don't forget the final `&` of the command!

I recommend you to write this 2 commands into 2 `.sh`. For example, the first one is `Xephyr.sh`, when you need just input `./Xephyr.sh`.

After the above operation, wait for about half a minute  and you will see the desktop. Operate as you please!
![](/assets/Linux/EX8%20Return%20to%20Paradise/2.png)
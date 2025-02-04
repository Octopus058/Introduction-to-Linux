## clear
Sometimes the terminal looks really messy and you cannot find the information you need at a glance. Now we have `clear` to bring a clean screen back. It proves effective every time!
![[assets/Linux/8 Tricks for a real Linuxer/1.png]]

>[!TIP] 
>More than that, `Ctrl+l` is the same as `clear`.*

##  `tab`
![[assets/Linux/8 Tricks for a real Linuxer/2.png]]
I should input `test1.cpp` normally but if I press `tab` ternimal will 
help me complete it automatically. `tab` do save plenty of time when you have to input some long commands.
## Search for commands with `↑` and `↓`
![[assets/Linux/8 Tricks for a real Linuxer/3.png]]
I `vim test1.cpp`, what if I find a mistake? I have to type this command again, too troublesome. But if I press `↑`, it will appear directly. `↑` and `↓` is a quick way to search history. I will introduce more in the following section **history**.

## history
Want to view previous commands? Feel slow for `↑` and `↓`? `history` is capable of this task. In most situtaion we only need `history num` and `num` is the number of commands you want to view.
![[assets/Linux/8 Tricks for a real Linuxer/4.png]]

## ll
Do you feel inconvenient when inputting  `ls -l`?  Linux gives us an upgrade plan `ll`. `ll` equals to `ls -l` and it's shorter to type.
Also you can try `ll -h` which is the same as `ls -lh`.
![[assets/Linux/8 Tricks for a real Linuxer/5.png]]

## `Ctrl` combination keys
### `Ctrl+C`
Always remember `Ctrl+C` is NOT copy on Linux. It is a `key interruption` to kill the process. 

A simple example is, when you want to delete the database and resgin you need `sudo rm -rf /*`. What if you suddenly change your mind during the process? *Damn I must kill it RIGHT NOW!* Then `Ctrl+C` helps you to save those poor remaining files. But shouldn't be able to save your career.

### `Ctrl+Z`
Many confuse `Ctrl+Z` and `Ctrl+C`, regard them as the same but actually not. `Ctrl+Z` freezes, or suspends the process. That is to say you can restore this process, using `fg`.
![[assets/Linux/8 Tricks for a real Linuxer/6.png]]
In the figure above, we suspend  `python3` with `Ctrl+Z` then restore it with `fg`. If it is `Ctrl+C` `python3` will be killed.

### `Ctrl+D`
`Ctrl+D` exits some status. We often use it to exit `root` user or compilers.![[assets/Linux/8 Tricks for a real Linuxer/7.png]]
I input `Ctrl+D` after `su -` and `python3`. Quite convenient.

### `Ctrl+A` / `Ctrl+E`
`Ctrl+A` moves the cursor to the beginning of the row, and  `Ctrl+E` the end. They save time to click the mouse or hold `←` and `→`.

### `Ctrl+S` /  `Ctrl+Q`
Always remember `Ctrl+S` is NOT save on Linux. (I said familiar words in the section `Ctrl+C`)  It freezes the terminal. And `Ctrl+Q` unfreezes.

What can they be used for? If you `tail -F` a file and a large amount of text is written suddenly, to investigate the specific content, you will freeze the terminal first. After you figure it out, unfreeze it and continue to observe the following situation. So we can say `Ctrl+S` and  `Ctrl+Q` helps look through the content displayed on terminal.
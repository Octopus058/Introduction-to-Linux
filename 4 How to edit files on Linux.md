## Brief
We install Linux, aiming to write codes. Then we must know how to edit files.

On Windows, we can use lots of tools such as `notepad`, `Devcpp`, `VSCode`, `Pycharm`, etc.
However, it's not the same as Linux. Linux don't have a `notepad` anyway. At our current level, I advise you only 1 way named `Vim`.

![[Pasted image 20241226145051.png]]

## Vim
Run commands below to install:
```
sudo apt update
sudo apt install vim
```
When editing files, just input `vim yourfilename`. If doesn't exist, `Vim` will open a new file for you. Here is the interface.
![[Pasted image 20241226145519.png]]
`Vim` has 2 input modes and many different methods. Here, we only need to know the most commonly used insertion mode. Press `i` and you should see `--INSERT--` in the bottom left corner. After this, input and delete whatever you want!

When you think all is done, press `esc` to quit insertion mode, then input `:wq` to save and quit `Vim`.
![[Pasted image 20241226150040.png]]
This is a table that lists various inputs and their functions.

| Input |             Functions             |
| :---: | :-------------------------------: |
|  :wq  |           save and quit           |
|  :q   |          cancel and quit          |
|  :q!  |       cancel and force quit       |
|  :e!  | cancel and open the original file |
Sometimes you need to find a function or variable in massive codes. On  Windows `Ctrl+F` helps you. Also, `Vim` has this ability. Just input `/whatyousearch`. Take a look at this example below:
![[Pasted image 20241226151119.png]]

## Other Tools

## nano
![[Pasted image 20241226151227.png]]
`nano` is another editor besides `Vim`, I don't like it because `Vim` is more powerful than it nearly in all aspects. If you want to learn `nano`, check this tutorial: https://blog.csdn.net/f272935657/article/details/141575478

## Gedit

`Gedit` is a light text editor. It supports various languages and its graphical interface is more like `notepad`, making it more user-friendly for `Windows` users.

However, `Gedit` has bugs for Linux without GUI, these warnings often make users puzzled (although it IS simple and will cause no mistake). So I won't use it anyway.
![[Pasted image 20241226151927.png]]
If you want to install `Gedit`, follow the commands below:
```
sudo apt upgrade
sudo apt install gedit
gedit yourfilename
```
It should be like this:
![[Pasted image 20241226152345.png]]
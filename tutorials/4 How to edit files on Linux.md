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

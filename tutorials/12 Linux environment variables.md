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

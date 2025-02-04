>[!IMPORTANT]
>All commands in this chapter except `su` need `sudo`!

## Permission information
There are 3 permissions on Linux: `r` for read, `w` for write and `x` for execute.

For a file or a folder, it carries permission information up to 10 characters long.The first character indicates this is a file `-`, a folder `d` or a soft link `l`. The remaining 9 characters are divided every 3 into a group. These 3 groups represent user permissions, user group permissions, and other user permissions, respectively.

Let's take an example. `drwxr-xr-x` means a folder which current user can  `rwx` and  user group and other users can only `r-x` .

## root
`root` user dominates Linux as `TrustedInstaller` on Windows. And ordinary users can only control `/home` and `r-x` the other directories.

### su
**S**witch **u**ser. Grammar here: `su - [username]`.
`-` is optional in fact, but I recommend you to write it.
If no `username`, `su -` switches to `root` by default.

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

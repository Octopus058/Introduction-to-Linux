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

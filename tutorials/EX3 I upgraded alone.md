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

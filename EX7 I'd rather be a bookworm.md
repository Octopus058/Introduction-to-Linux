>[!IMPORTANT]
>This chapter was written after Introduction to Linux v0.9, some of my view had changed a lot during this period.
## Ubuntu was supposed to die
You will never know how long I take to determine my mind to change my Ubuntu to Debian.

Since my first encounter with Linux, I have been using Ubuntu 18.04 LTS. But it's too old, I have to move forward. I've heard that Canonical insists on promoting its garbage `snap`. Even willing to give up the spirit of open source to replace the position of `apt`. What are you thinking Canonical? `snap` is just a disaster, it's slower and fatter than `apt`. But `snap` has replaced `apt` on the newest Ubuntu. When you `apt install`  something, you will get a `snap` package. Yes, Canonical CAN cheat user, deny open source spirit, I don't know what CAN'T Canonical do?
![[Pasted image 20250203234051.png]]
This all happens on Ubuntu 24.04, but if i choose 22.04 LTS? Well, 'Install `snap`?' popped up when I was upgrading my Ubuntu, which made me felt sick.

I can't deny that Ubuntu has made many presets, which are very convenient, or Ubuntu is the first Linux OS for most users. I used to have a great impression of Ubuntu too until this: https://news.itsfoss.com/ubuntu-24-04-disappointment/. Ubuntu has gone too far, it not only goes beyond the scope of Debian redistribution, but also breaks rules of open source. In my opinion, Ubuntu is like Fritz Haber, got remarkable achievements but eventually lost oneself and suffered the consequences. I have to say, **Canonical, GO FUCK YOURSELF!**

Moreover, see what Richard Stallman said 11 years ago: https://www.youtube.com/watch?v=CP8CNp-vksc.

## Clean up our act
Never forget Ubuntu is just a Debian distro. So why not choose Debian instead? Debian is safer, stabler and healthier. You can download it just in WSL.
![[Pasted image 20250203192124.png]]
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
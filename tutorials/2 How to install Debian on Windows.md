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
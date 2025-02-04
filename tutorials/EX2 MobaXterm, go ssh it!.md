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

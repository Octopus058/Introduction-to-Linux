## Before the beginning
When I was writing **EX2 MobaXterm, go ssh it!**, I tried to make a `GNOME` desktop for Ubuntu. But I failed after more than 2 days' work. This time I chose `Plasma` instead and it worked finally. But it can be improved that the GUI desktop is a bit laggy. I think the reason is WSL itself.
![[assets/Linux/EX8 Return to Paradise/1.png]]
More than that, it's a windowed, not a fullscreen application controlled by `Xephyr`. And I don't know why it can't rename files (even if I boot it with `sudo`).

But no matter what, it was a big success, declaring that I have basically solved the GUI problem of WSL. Next step I may change the desktop to relatively lighter `xfce` to see how smooth it will be and decide exactly which should be used.

## Installation
>[!NOTE]
>Check this blog for more information: https://ivonblog.com/posts/run-linux-desktop-on-wsl/.

`GNOME` desktop need `systemd`, WSL is supposed to support `systemd` but there's lots of bugs so we have to abandon it and choose `KDE`.

`Plasma` is smaller than the ordinary `kubuntu`, just `apt install plasma-desktop`.

Next we need `Xorg` and `Xserver`, input commands below:
```
sudo apt install xorg
sudo apt install xserver-xephyr
```
Set the environment variables to enable Xephyr to function properly.
```
echo "export XDG_SESSION_TYPE=x11" >> ~/.profile
echo "export GDK_PLATFORM=x11" >> ~/.profile
echo "export GDK_BACKEND=x11" >> ~/.profile
echo "export QT_QPA_PLATFORM=xcb" >> ~/.profile
echo "export WAYLAND_DISPLAY=" >> ~/.profile
 
source ~/.profile
```

## Run
Here are 2 commands you need to run. And `export DISPLAY=:0` before the first one. Similarly, `export DISPLAY=:1` before the second.
```
Xephyr -br -ac -noreset -resizeable -screen 1920x1080 :1 &
sudo dbus-launch --exit-with-session startplasma-x11 &
```
>[!IMPORTANT]
>Don't change the resolution to 2560x1440, a windowed application can't fill the screen properly. Besides, don't forget the final `&` of the command!

I recommend you to write this 2 commands into 2 `.sh`. For example, the first one is `Xephyr.sh`, when you need just input `./Xephyr.sh`.

After the above operation, wait for about half a minute  and you will see the desktop. Operate as you please!
![[assets/Linux/EX8 Return to Paradise/2.png]]
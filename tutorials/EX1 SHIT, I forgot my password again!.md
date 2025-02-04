## WSL
This is one reason why I recommend WSL. Open `Powershell` or `Windows Terminal`, input `wsl -u -root`. Ignore the warnings (If there are) then WSL becomes active and you are the root user. And `passwd <username>` helps a lot.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/1.png)

## Not WSL?
### Terminal
If you still remember the password of your account, the problem will be much simpler. Input `sudo passwd root` and the terminal will ask password of the current user.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/2.png)
But what if you even forget your own password? You want to `su -`  to reset your password and need your password to reset root user password. This is trapped in a `while(1)` endless loop. So we can only take out our last resort.
### GRUB
Take Ubuntu as an example. Boot Ubuntu and hold `shift` to enter `GRUB` (like `BIOS` on Windows) menu. Select **Advance options for Ubuntu.**
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/3.png)
Select **recovery mode**.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/4.png)
Wait a second and select **Drop to root shell prompt**.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/5.png)
Then `passwd` and input your new password. Ignore the error that I accidentally pressed a `space`.
![](/assets/Linux/EX1%20SHIT,%20I%20forgot%20my%20password%20again!/6.png)
After that, select **Resume normal boot**. You can use it normally now.
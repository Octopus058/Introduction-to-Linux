## WSL
This is one reason why I recommend WSL. Open `Powershell` or `Windows Terminal`, input `wsl -u -root`. Ignore the warnings (If there are) then WSL becomes active and you are the root user. And `passwd <username>` helps a lot.
![[Pasted image 20250117131227.png]]

## Not WSL?
### Terminal
If you still remember the password of your account, the problem will be much simpler. Input `sudo passwd root` and the terminal will ask password of the current user.
![[Pasted image 20250117132520.png]]
But what if you even forget your own password? You want to `su -`  to reset your password and need your password to reset root user password. This is trapped in a `while(1)` endless loop. So we can only take out our last resort.
### GRUB
Take Ubuntu as an example. Boot Ubuntu and hold `shift` to enter `GRUB` (like `BIOS` on Windows) menu. Select **Advance options for Ubuntu.**
![[Pasted image 20250117133253.png]]
Select **recovery mode**.
![[Pasted image 20250117133444.png]]
Wait a second and select **Drop to root shell prompt**.
![[Pasted image 20250117133525.png]]
Then `passwd` and input your new password. Ignore the error that I accidentally pressed a `space`.
![[Pasted image 20250117133657.png]]
After that, select **Resume normal boot**. You can use it normally now.
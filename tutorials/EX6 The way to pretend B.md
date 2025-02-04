>[!NOTE]
>Sorry for my Chinglish but it's really funny.

## fastfetch
### Why `fastfetch` rather than `neofetch`
If I say `neofetch`, most of you must know it's a tool which fetches system information and prints it prettily. 
![[Pasted image 20250203122721.png]]
However, the last release of `neofetch` is in 2020, and its repository have been archived since Apr 26, 2024. I understand that it won't make many mistakes in at least 10 years but there are still reasons to choose `fastfetch` instead. Here I quote the statement in its README.
>Q: Neofetch is good enough. Why do I need fastfetch?
>1. Fastfetch is actively maintained.
>2. Fastfetch is faster. As the name suggests.
>3. Fastfetch has a greater number of features, though by default fastfetch only has a few modules enabled; use `fastfetch -c all` to find what you want.
>4. Fastfetch is more configurable. You can find more information in the Wiki: [https://github.com/fastfetch-cli/fastfetch/wiki/Configuration](https://github.com/fastfetch-cli/fastfetch/wiki/Configuration).
>5. Fastfetch is more polished. For example, neofetch prints `555 MiB` in the Memory module and `23 G` in the Disk module, whereas fastfetch prints `555.00 MiB` and `22.97 GiB` respectively.
>6. Fastfetch is more accurate. For example, [neofetch never actually supports the Wayland protocol](https://github.com/dylanaraps/neofetch/pull/2395).


### Installation
As the same as `pay-respects`, just download `fastfetch-linux-amd64.deb` from GitHub releases page and put into your Ubuntu by MobaXterm. Then run `sudo dpkg -i fastfetch-linux-amd64.deb` and all done.

### Usage
Input `fastfetch` and you will obtain all you want.
![[Pasted image 20250203123445.png]]
Someone careful may ask, Does `fastfetch` safe because it seems to leak IP address. Here we must clarify that IP begins with `10`, `172` or `192.168` is a local address and nothing to do with user privacy. If you insist on it, then you have to `fastfetch --gen-config` and disable  `Local IP` in `~/.config/fastfetch/config.jsonc`. You can also see this part in GitHub README.

## btop
I think `btop` is the coolest `top` to monitor OS resource. It's in `apt` source.
![[Pasted image 20250203124755.png]]
There is only 1 more thing you need to know that if you experience screen flickering during `ssh` connection, press `o` and turn `Truecolor` to false.
**![[Pasted image 20250203132534.png]]

## fzf
`fzf` is Fuzzy Fliter, an extraordinary tool to replace `find`. And it's already in the `apt` source.
![[Pasted image 20250203174050.png]]
What's more, it supports previewing file contents. Inputting something like `fzf --preview='cat {}'` must amaze you.
![[Pasted image 20250203174246.png]]
If you think it's over, you're completely wrong. Remember what's the meaning of `$`? Try `vim $(fzf --preview='cat {}')`, select a file and press `Enter`, don't forget to take a picture of your surprised big mouth.
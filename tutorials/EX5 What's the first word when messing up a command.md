## Before the beginning
Let's see a picture first.

![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/1.png)

I don't know if you often type 1 or 2 letters of a command incorrectly. If no, Congratulations. You are enough careful. But if yes, you're like most people who need to retype the entire command or press `↑` and start moving the cursor to modify incorrect letters. This is tiring, isn't it? I hoped to make a change. And it came true when I found a repository on GitHub named `thefuck`. Forget the NSFW, `thefuck` is interesting.

## thefuck

> `thefuck` is a  magnificent app which corrects your previous console command.

See this demo:

![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/example.gif)

Right. It has magic when you saw the demo. And you naturally opened the issues, saw the following scene:

![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/2.png)

You won't believe that the repository you just found is already on the brink of death. Until you found this:

![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/3.png)

To be frank, I felt terrible. There are so many repositories received huge amount of issues and PRs, but were ignored by maintainers. I really don't know why, but it IS an inevitable problem in the open source industry.

However, the light hasn't gone out yet. Just as they said in issues, there's an active project working on it. It is  `Pay Respects`. We can still say `fuck` to those wrong letters. I think it is the most reassuring thing to us.

## Pay Respects
I asked the author 4 questions. He answered me respectively.

![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/4.png)

Now we have gained a basic understanding that, `Pay Respects` aims to replace `thefuck` with its faster speed and more accurate identification. But now it hasn't been on Debian, or Ubuntu in other way. Does this mean that we are unable to use it? Absolutely no. I found `.deb` from the releases. We can certainly install it on Debian!

Input `arch` on WSL and you should receive `x86_64`. This represents you have an Intel 64 CPU, or `AMD64` in a more formal way. Download `pay-respects_0.6.11-1_amd64.deb` from the releases page and you can start to install it on WSL.

>[!IMPORTANT] 
>As of the completion of this tutorial, the latest version of `Pay Respects` is `0.6.11`, it will update and don't be a nerd.

Toggle the `.deb` into Debian rather than simply `wget` it due to the risk of download failure caused by intermittent access to GitHub. 

![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/5.png)

Run `sudo dpkg -i pay-respects_0.6.11-1_amd64.deb` to install `.deb`.

> [!IMPORTANT] 
> If you are using Ubuntu 18.04, It will throw errors that the `libc6` dependency is lower than the required version like this:
> ![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/6.png)
> Of course you can update `libc6`, but I think there will be unforseen problems if crossing too many versions because `libc6` is a OS dependency. So the safest way is upgrade your Ubuntu. Check **EX3 I upgraded alone** for more information.
> 
> However, I am currently using Ubuntu 22.04 and my `libc6` version is 2.35, still lower than the requirement. For Ubuntu 24.04 it is 2.39 but I don't want to upgrade to 24.04. So I upgraded `libc6` forcely. Add `deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main` to `apt` source temporarily. It's actually `apt` source for Ubuntu 24.04. We will borrow it to update `libc6`. Run `sudo apt update` and `sudo apt install libc6` but **remember not to run `sudo apt upgrade`**. After the installation  run `ldd --version` to check if it is 2.39. 
> 
> There are 2 more things to pay attention to, `libssl3t64` is missing but you can try `sudo apt --fix-broken install`, `build-essential` is broken because of the change of `libc6` but `sudo apt build-essential` makes sense. The last step is to annotate the source of Ubuntu 24.04.

After works above, add this to your `.bashrc` and don't forget to `source` it.

```
eval "$(pay-respects bash --alias)"
```

Now you can pay respects with confidence!
![](/assets/Linux/EX5%20What's%20the%20first%20word%20when%20messing%20up%20a%20command/7.png)

## Murmurs
I personally feel that compression and decompression related commands are one of the most troublesome contents in this tutorial. But we still have to overcome difficulties. There is a good news that this chapter is the end of the main part of the tutorial (but not the end of your Linux learning road :D). I know you must be tired but cheer up!

## tar
Before the commands, let's understand the types of compressed files on Linux first. `.zip` is the same as Windows, but not the most common. `.tar` and  `.tar.gz` are created by `tar` and `gzip`. **They are the most commonly used form.**

But wait, do you think of a question. Why Windows prefers `zip` but Linux not? Why not the two OSs unify compression format?

It's definately a good question. Linux allows `.zip` or `.7z` without problems. But they have a fatal disadvantage that they CANNOT storage Linux permission information (do you still remember it?). Therefore, `tar` is irreplaceable in a sense. Even the backend of `tar` can be changed to `zip` or `7z`, but they lose the battle with `tar` on Linux.

Now we can introduce our best friend `tar` formally. Strictly speaking `tar` isn't a kind of compression, it archives files in fact. `tar` puts files into a package without too much compression. The true implementation of compression or decompression is `gzip`. Moreover, `gzip` is also an compression algorithm. In other words, we call this the backend of `tar`.

>[!TIP]
>There are more algorithm except `gzip`, but it's commonly used.

Here's the grammar: `tar [-c | -v | -x | -f | -z | -C] <file1> <file2> ...`.

`-c` is compression. On the contrary `-x` is decompression.

`-v` shows the progress.

`-f` is followed by files, it's required in most cases.

`-z` opens `gzip` mode which means it will create `.tar.gz`.

`-C` changes the destination of decompression.

I recommend you to put `-z` at first (if there's `-z`) and `-f` at last to avoid errors.

I compressed 3 c++ files and  decompressed them into `~/decompression`. Don't forget to `mkdir` or it will throw error!

![](/assets/Linux/13%20Linux%20compression%20commands/1.png)

There is a tip in the figure above. `-zcvf` can be decompressed by `-xvf` and `-zxvf`, but `-cvf` can be only decompressed by `-xvf`. It's easy to make mistakes here. My suggestion is to compress everything in `gzip` format.

## More to say
I was planning to talk about `zip`. `zip` is more familiar to Windows users, but in order to avoid the bad habit of only using `zip`, I decided not to introduce it. If you have to use it, check this blog: https://blog.csdn.net/weixin_49114503/article/details/132812358. But  remember, `zip` isn't easier than `tar`.

After learning this chapter, you should know what it is. Don't ask similar silly questions again.

![](/assets/Linux/13%20Linux%20compression%20commands/2.png)

## The end
At this point, the main part of this tutorial is basically completed. If you can persist in seeing this, it's already very difficult. Linux is like a delicate handicraft, not a massive object like Windows. And this is just the reason why it wins love of programmers. Please always remember it's a tool, not a lock. We learn Linux for better programming, not for showing off and putting it aside. I hope that by studying this tutorial, you can adjust your mindset, not only Linux, but also any problems encountered in learning.

Actually, writing this tutorial is largely due to Teacher Chen's request. I happen to be bored during the holidays, so I write a bit every day. I find it quite interesting during this, and I can also review a lot of grammar that I have forgotten, killing two birds with one stone. The next tutorial should be CSS, it's been a long time since I last updated it! Well, see you next time xD

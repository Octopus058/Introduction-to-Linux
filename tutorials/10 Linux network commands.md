## IP and hostname
IP is your network address if you are connected to the internet. It's divided into IPv4 and IPv6. Our country use IPv4 more often from a data perspective. Hostname is the OS name. Others on the internet find you by your IP and hostname.

Input `ifconfig` and the terminal shows lots of information. Pay attention to `eth0`, you will find `inet`, the following is IP.

![](/assets/Linux/10%20Linux%20network%20commands/1.png)

Input `hostname` to check your hostname. Or there's an easier way, your hostname is behind "@" on the terminal.

If you aren't satisfied with this name. *When did I come up with such a reckless name!* Don't worry, you can certainly change it. `hostnamectl set-hostname <name>` saves your young soul. Like this:

![](/assets/Linux/10%20Linux%20network%20commands/2.png)

## ping

`ping` checks whether the server is connectable. Grammar here: `ping [-c num] <ip/hostname>`.

`-c num` decides how many times you `ping`. If no then infinite.

![](/assets/Linux/10%20Linux%20network%20commands/3.png)

`ping` can not only determine if the server is functioning properly, but also you are connected to the internet. Abviously you won't `ping` anything when offline.

## wget
`wget` is a powerful command to download things from the internet. It has many parameters that can't be omited into a sentence. Howevere, we can talk about a few of the most commonly used ones.

`-O` renames files you download. Like this: `wget oct0pu5.cn -O oct0pu5.html`.

`-i` makes `wget` can download mutiple files  like `pip install -r`. Make a `requirements.txt` if is needed, and input `wget -i requirements.txt`.

When the file is very large, it spends a long time. Also, Linux maybe throw errors during transmission. We can add `-b` to download in the background and `-c` to achieve file breakpoint resume. Now I will explain both separately.

`wget -b url` are used together with `tail -F` generally. `wget-log` shows the progress. In this example `index.html` is downloaded in the blink of a eye so `wget-log` is empty.

![](/assets/Linux/10%20Linux%20network%20commands/4.png)

`wget -c [-t num] [-T num] url` avoids the issue of file download interruption. `-t num` is the times of retry. If no then infinite. `-T num` is timeout waiting time. `wget` will retry if timeout waiting time is exceeded.

## curl
>[!TIP]
> Debian may require self installation of `curl`. Input `sudo apt install curl`.

`curl` send a web request. Grammar here: `curl [-O | -o rename] <url>`.

`-O` is a must if downloading files. `-o` renames the file.

I have to say again that the main function of `curl` is sending web requests, downloading files is just a part. So I suggest you to use `wget` more currently.

## Port
Port is the interface for computer interaction. Our familiar USB, VGA are all physical ports. And we also have virtual ports in computer OS. Linux has 65536 ports. They are 0 to 65535 and divided into 3 parts.

| port number |                    usage                    |
| :---------: | :-----------------------------------------: |
|   0-1023    |     Called by system built-in services      |
| 1024-49151  |            Users can call freely            |
| 49152-65535 | Used for temporary network connection calls |

### netstat
`netstat` can check the port occupancy status. use `netstat -tunpl` to show all information you need. Prototype, local address, ports, states and PID, everything is in sight.

![](/assets/Linux/10%20Linux%20network%20commands/5.png)


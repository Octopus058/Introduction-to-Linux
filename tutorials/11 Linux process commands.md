## Process
Applications are managed by OS. OS registers process for a running application and a unique PID for every process.

## ps
`ps -ef` shows all information of all process.
![](/assets/Linux/11%20Linux%20process%20commands/1.png)
`UID` is the user to which the process belongs. `PPD` is the `PID` of parent process. `C` is CPU usage. `STIME` is the start time. `TTY` is the number of start terminal, if not terminal startup then "?". `TIME` is the time that process occupies CPU. `CMD` is the path or commands.

## pstree
`pstree` is more like an upgraded version of `ps`. It shows process in a tree structure.
![](/assets/Linux/11%20Linux%20process%20commands/2.png)
You can see the `pstree` is controlled by `bash`.

## kill
`kill` closes the process. Grammar here: `kill [-9] <PID>`.
`-9` means close forcely (or kill). 

`kill` is usually used together with `ps`. See this example:
![](/assets/Linux/11%20Linux%20process%20commands/3.png)
I `tail -F` a file and `kill` it. It shows "Terminated" which means it closes itself. And when `kill -9` "Killed" means OS closes it forcely.

## top
`top` monitors process information in real-time. `top` refreshes every 3 seconds by default. We usually use `top -i` to ignore those inactive process.
![](/assets/Linux/11%20Linux%20process%20commands/4.png)
Look, I am `vim`-ing a file. And there're more left. 

First row, `top` shows OS time, how long the OS has run, how many users have logged in and `load average` is system load in 1, 5 and 15 minutes.

Second, how many tasks, how many of them are running, sleeping, have stopped or are zombie process.

Third, `%CPU(s)` is CPU usage. `us` is user CPU usage. `sy` is system CPU usage. `ni` is the ratio of CPU time occupied by high priority processes. `id` is free CPU usage. `wa` is I/O waiting CPU usage. `hi` is CPU hardware interrupt rate. `si` is CPU software interrupt rate. `st` is forcely waiting CPU usage.

Fourth and fifth, `Mem` is physical RAM and `Swap` is virtual RAM.

Continuing downwards, there is a row of headers. `PR` is the priority, the smaller the higher. `NI` is also the priority, positive represents low, 0 represents medium and negative represents high. `VIRT`, `RES` and `SHR` represent virtual, physical and shared memory. `S` is process status. `S`, `R`, `Z`, `N`, `I` is sleeping, running, zombie, low priority and idle. `%CPU` and `%MEM` is CPU and memory usage. `TIME+` is the time that process occupies CPU.
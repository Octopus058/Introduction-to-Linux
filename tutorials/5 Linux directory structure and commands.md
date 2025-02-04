## Directory structure
### Top level directory
As we all know, There are some drives on Windows, we call them `top level directory`, such as `C:\`, `D:\`, etc. However, Things are quite different on Linux. There is only 1 `top level directory` named `/`. And we often call this directory structure `tree`.

You must notice that the symbols representing hierarchical relationships are different on Windows and Linux. Actually `\` on Windows and `/` on Linux. It's very easy to confuse so recite it by heart.

### Absolute path and relative path
I have teached this part in HTML tutorial, but still need to emphasize again.

Absolute path starts with `/`, and relative path starts with current directory. In actual operation we use relative path more often.

Assume we have following directory stucture:

```
home/
├── test.cpp
└── README.md
└── LICENSE
```

Here are 2 examples showing what're absolute path and relative path:

To represent `test.cpp`in absolute path, It's `/home/test.cpp`.
And for `LICENSE`, we use relative path `LICENSE` (This is relative to `test.cpp`)

Isn't it very simple? For beginners, it's easy to make mistakes. Make sure to memorize it.

### Special path symbols
Linux provides 3 `Special path symbols` for users to write file path easier. I list them in a form.

| symbol |         meaning          |     |
| :----: | :----------------------: | --- |
|  `.`   |    Current directory     |     |
|  `..`  | Previous level directory |     |
|  `~`   |         `/home`          |     |

I will explain them in more detail in the following text.

## Directory Commands
### ls
`ls` list files in current directory. Here's its grammar: `ls [-a -h -l] [path]`.
If you choose no parameter, `ls` represents displaying files in a flat layout.
![[Pasted image 20250110121140.png]]
`-a` means show all files include those are hidden. It's easy to hide files on Linux, just add a `.` before its name such as `.bashrc`.
![[Pasted image 20250110121747.png]]
>[!TIP] 
>Files and folders are distinguished by color in WSL, those blue names are folders.

`-l` means show files in a column with more infomation like "detailed information" on Windows.

`-h` changes `file size` in `-l` to clearer style (represent by `k`, `m`, `g`) and **must use with -l**
![[Pasted image 20250110122905.png]]
>[!TIP] 
>parameters above can be put together like `-alh`.

As for `path` parameter, we often take following strategy: switch to the desired directory and `ls` rather than `ls desireddirectory` directly, so I won't teach it xD

###  cd
As the same as `cd` on Windows Terminal, its function is **c**hange **d**irectory. Grammar here: `cd [path]`.

There's not much to say, just pay attention to one thing that `cd` default path is `/home`. That means `cd` equals  `cd ~`  and if there's a `/home/test.cpp`, you just need to  `cd test.cpp`.

Now we finished `cd`, it's time to talk about details that weren't clear in the previous text. 
As for me, `..` is often used in `cd`. See the figure below, `cd` deafult path is `/home/oct0pu5`. I input `cd ..` twice and return `/`, then`cd etc` and `ls`, it shows all file in `/etc`. The above is the classic directory operation.
![[Pasted image 20250110132240.png]]

### pwd
**P**rint current **w**ork **d**irectory. Often used to check whether you are in right directory, or copy the directory for any purpose.
![[Pasted image 20250110133128.png]]

### mkdir
**M**a**k**e **dir**ectory. Grammar here: `mkdir [-p] <path>`.

If you just want to create one level folder, ignore `-p`. If more than one level is needed, `mkdir` must attach `-p`, otherwise it will throw error.
![[Pasted image 20250110133851.png]]
 >[!IMPORTANT]
 >`mkdir` can only take effect in `/home` by default. We can solve this problem in **7 Linux user and permission commands**.
![[Pasted image 20250110134306.png]]
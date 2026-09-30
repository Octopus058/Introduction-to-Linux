<div align="center">

# Introduction to Linux

A hands-on guide to living in the terminal, written against Fedora 44.

</div>

---

## About

This is a practical guide to Linux, not a reference manual. It starts from "what is
Linux" and works up to the things you actually need: editing files, permissions, the
directory tree, network and process commands, environment variables, and compression.
Then it goes further, into recovering a forgotten password, SSH, upgrading a distro,
dual-booting, and playing games.

The examples use **Fedora 44** as the reference distribution. Other distros appear where
they differ, since the author runs an Ubuntu VM alongside it, but Fedora is the one the
text is written against.

The whole text is in English on purpose. The preface notes that it will also help your
CET6.

## Who this is for

You do not need any prior Linux experience. The tutorial begins by explaining what Linux
is, why you might want it, and which distribution to pick.

If you are coming from Windows, the preface has one piece of advice worth repeating:
abandon Windows inertia thinking. Do not be afraid of the terminal. A GUI is not
mandatory.

## Contents

### Preface: Hello Linux!

What Linux is, why to use it, and which distribution to choose.

### 1. Basic Commands

The working core of the tutorial. Setting up a C++ and Python environment, editing files
(Vim, nano, Gedit), the directory structure and path syntax, file commands, users and
permissions, network commands, process management, environment variables, compression,
and a collection of tricks worth knowing.

### 2. Advanced Usage

The situations that actually happen. What to do when you forget your password. SSH with
MobaXterm. Upgrading a distribution. What to do when the C drive is almost full.
Upgrading Ubuntu when it is supposed to be dead. And a chapter on the philosophy of
using Linux at all.

### 3. Dual OS

Running Linux alongside Windows. An Arch Linux installation guide, getting games working
through Proton, Nvidia drivers on Fedora, and the software the author actually uses.

### Afterwards: More than an OS

Closing thoughts.

## What this tutorial does not cover

- **Distribution neutrality.** Fedora 44 is the reference. Debian and Ubuntu appear where
  the commands differ, but this is not a distro-agnostic guide.
- **Server administration.** No systemd in depth, no containers, no security hardening,
  no deployment. This is about using Linux on your own machine.
- **Exhaustive command references.** The aim is to get you productive, not to document
  every flag. Use `man` and the Arch Wiki, as the preface suggests.

## Building the PDF

You need a TeX distribution with XeLaTeX. A **full** TeX Live installation is required
rather than a minimal one, because the `elegantbook` class loads `ctex`/`xeCJK`. The
document class is bundled in this repository, so there is nothing extra to install.
(Tested with TeX Live 2023.)

```bash
latexmk
```

A `.latexmkrc` is included, so `latexmk` selects XeLaTeX automatically and runs as many
passes as the cross-references need.

```bash
latexmk -c    # remove auxiliary files, keep the PDF
latexmk -C    # remove everything, including the PDF
```

The output is `Introduction to Linux.pdf`

## License

This tutorial is released under
[CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [LICENSE](LICENSE).

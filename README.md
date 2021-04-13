# alpine42

A CLI wrapper around docker for use on 42 projects. The Docker image is built from an Alpine Linux image to which I added valgrind, clang and clang++ among other tools. Feel free to customize the Dockerfile for your own needs!

## Installation (MacOS)

The script makes use of the `grealpath` command, which can be installed with:
```
$ brew install coreutils
```

Clone the repository and add those two lines to your shell environment (~/.bashrc, ~/.zshrc...)

```
$ export ALPINE42_INSTALL_DIR=<PATH_TO_YOUR_INSTALL_DIRECTORY>
$ export PATH="$PATH:$ALPINE_INSTALL_DIR"
```

Run with -h to show usage
```
$ alpine42 -h
alpine42 is a CLI wrapper tool around docker that runs an Alpine Linux container and mounts a host directory of your choice as a volume.

usage:  alpine42 [-d <project_dir>] [-c <command>]

-d : the directory to mount to the container (defaults to current directory)
-c : the command you wish to execute inside the mounted directory (if not supplied, launches a bash shell inside the container)
-v : switch flag to enable verbose output
-h : show help

```

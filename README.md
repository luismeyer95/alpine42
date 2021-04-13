# alpine42

A CLI wrapper around docker for use on 42 projects. The Docker image is built from an Alpine Linux image to which I added valgrind, clang and clang++ among other tools. Feel free to customize the Dockerfile for your own needs!

## Installation (MacOS)

The script makes use of the `grealpath` command, which can be installed with:
```
$ brew install coreutils
```

Clone the repository and set the following variables in your shell env (~/.bashrc, ~/.zshrc...) so that ALPINE42_INSTALL is the path to this repository:

```
export ALPINE42_INSTALL=$HOME/Desktop/alpine42
export ALPINE42_BIN_PATH=$ALPINE42_INSTALL/bin
export PATH="$PATH:$ALPINE42_BIN_PATH"
```

Update your current shell's environment, for example
```
$ source ~/.zshrc
```

This script assumes that docker is installed. Run the `install_docker_42` script of this repository if it isn't
```
$ ./install_docker_42
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

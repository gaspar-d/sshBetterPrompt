# <font color="red">In construction - do not use</font>

# SSH Better Prompt

A tool that enhances the SSH experience by providing a more informative and customizable prompt.

## Features

* Just a simple script to change the default prompt for SSH.
* It sent a bashrc file to the server and updates the prompt with better colors and aliases.
* it will change the bashrc file on the server.

## Installation

To install the SSH Better Prompt, follow these steps:

For quality of life and convenience, you can add this func to your shellrc file:

This will:

* Clone the repository: `git clone https://github.com/your-username/sshBetterPrompt.git`
* Navigate to the project directory: `cd sshBetterPrompt`
* Install dependencies: `run setup.sh`
* Source the bashrc file: `source ~/.bashrc`
* Start Bash to keep you logged into SSH: `bash`


```bash
# FISH
function sshBetterPrompt
    set pem_file $argv[1]
    set hostname $argv[2]
    ssh -t -i $pem_file $hostname "chmod +x setup.sh && ./setup.sh"
end
```
```bash
# ZSH
function sshBetterPrompt
    pem_file=$1
    hostname=$2
    ssh -t -i $pem_file $hostname "chmod +x setup.sh && ./setup.sh"
end
```
```bash
# BASH
function sshBetterPrompt
    pem_file=$1
    hostname=$2
    ssh -t -i $pem_file $hostname "chmod +x setup.sh && ./setup.sh"
end
```

## Usage

- the prompt will be changed on the server automatically

These Aliases will improve the prompt experience:

## update

Later if I found it useful I'll make it a executable instead of a function.
So maybe put it on a package manager as Brew and Cask or something like that.
But as it's only a simple script wrapping other cmd, I don't know if it's worth it.

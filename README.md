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
    set instance_hostname $argv[2]
    ssh -t -i $pem_file $instance_hostname "curl -L https://github.com/gaspar-d/sshBetterPrompt/archive/master.tar.gz | tar -xvz && cd sshBetterPrompt-main && chmod +x ./setup.sh && ./setup.sh"
end
```
```bash
# ZSH
function sshBetterPrompt
    pem_file=$1
    instance_hostname=$2
    ssh -t -i $pem_file $instance_hostname "curl -L https://github.com/gaspar-d/sshBetterPrompt/archive/master.tar.gz | tar -xvz && cd sshBetterPrompt-main && chmod +x ./setup.sh && ./setup.sh"
end
```
```bash
# BASH
function sshBetterPrompt
    pem_file=$1
    instance_hostname=$2
    ssh -t -i $pem_file $instance_hostname "curl -L https://github.com/gaspar-d/sshBetterPrompt/archive/master.tar.gz | tar -xvz && cd sshBetterPrompt-main && chmod +x ./setup.sh && ./setup.sh"
end
```

## Usage

- the prompt will be changed on the server automatically

These Aliases will improve the prompt experience:

## Known Issues

I have to return some cmd into the ssh -t call.
using they in the script will was making the shell lose reference of the deleted folder
and initializing the session inside the mising folder.

## update

Later if I found it useful I'll make it a executable instead of a function.
So maybe put it on a package manager as Brew and Cask or something like that.
But as it's only a simple script wrapping other cmd, I don't know if it's worth it.

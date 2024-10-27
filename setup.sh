#!/bin/bash

# Check if git is available
# if command -v git &> /dev/null; then
#     # Clone the repository using git
#     git clone https://github.com/gaspar-d/sshBetterPrompt.git
#     cd sshBetterPrompt
#     echo -e "\033[32mCloned repository successfully with git.\033[0m"
# elif command -v wget &> /dev/null; then
#     # Download the repository using wget and tar
#     wget https://github.com/gaspar-d/sshBetterPrompt/archive/master.tar.gz
#     tar -xvf master.tar.gz
#     rm master.tar.gz
#     cd sshBetterPrompt-master
#     echo -e "\033[32mDownloaded repository successfully with wget.\033[0m"
# elif command -v curl &> /dev/null; then
#     # Download the repository using curl and tar
#     curl -L https://github.com/gaspar-d/sshBetterPrompt/archive/master.tar.gz | tar -xvz
#     rm master.tar.gz
#     cd sshBetterPrompt-master
#     echo -e "\033[32mDownloaded repository successfully with curl.\033[0m"
# else
#     # Display an error message and exit
#     echo echo -e "\033[1;31mError: Neither git, wget, nor curl are available. Cannot download repository.\033[0m"
#     exit 1
# fi

# Move the existing .bashrc to .bashrc-old
mv ~/.bashrc ~/.bashrc-old

# Copy the new .bashrc file from the repository
cp ~/sshBetterPrompt-main/.bashrc ~/.bashrc

# Make sure the new .bashrc file is executable
chmod 644 ~/.bashrc

# change to home directory
cd .. 

# Remove the sshBetterPrompt-main directory
rm -rf ~/sshBetterPrompt-main

# Source the new .bashrc file and start a new bash shell
# source ~/.bashrc

exec bash


#!/bin/bash

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

# initialize
exec bash


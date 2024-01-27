#! /bin/bash

sudo apt install -y curl git

git clone https://github.com/asdf-vm/asdf.git ~/.asdf

echo "No open ~/.bashrc and add . $HOME/.asdf/asdf.sh"

nano ~/.bashrc

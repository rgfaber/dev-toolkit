#! /bin/bash
sudo apt update && sudo apt upgrade -y --autoremove

sudo apt install -y protobuf-compiler

protoc --version
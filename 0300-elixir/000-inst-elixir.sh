#! /bin/bash

## Reference: https://elixir-lang.org/install.html#gnulinux

wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb

sudo apt-get update

sudo apt-get install -y esl-erlang

sudo apt-get install elixir

elixir -v
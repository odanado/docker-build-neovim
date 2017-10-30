FROM ubuntu:16.04

RUN apt update

WORKDIR /root
ADD neovim.txt package.txt

RUN apt install -y $(grep -vE "^\s*#" package.txt | tr "\n" " ")

RUN apt install -y git cmake
RUN apt install -y automake libtool libtool-bin m4
RUN git clone https://github.com/neovim/neovim

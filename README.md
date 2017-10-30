# docker-build-neovim

## build
```bash
docker build . -t neovim-image
docker run -it --name neovim neovim-image
cd neovim && make
```

## ホストマシンで
```bash
docker cp neovim:/root/neovim/build/bin/nvim nvim
docker cp neovim:/root/neovim/runtime runtime
export VIMRUNTIME=$PWD/runtime
```

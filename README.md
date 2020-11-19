安装nvim 和 nodejs 

```bash
apt-get install neovim nodejs
```

安装vim Plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

安装插件
```vim
:PlugInstall
```

```

```


### 其他配置

python的语法提示如果看不清楚可以调整color
```
nvim ~/nvim-linux64/share/nvim/runtime/colors 
hi Pmenu      guibg=LightBlue      ctermbg=15
```

修改Python项目地址
```
nvim .zshrc
export PATH=$HOME/tmp/vats_local
```

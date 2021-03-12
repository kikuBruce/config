# tmux 
## tmux 默认shell
```
set -g default-shell '/usr/bin/zsh'
set -g default-command '/usr/bin/zsh'
```

# zsh
## zhs 安装
```bash
apt-get install zsh
```

## oh-my-zsh
```bash
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

如果连接不上可以配置hosts,
```bash
199.232.96.133 raw.githubusercontent.com
```

ip可以在下面这个网站查到
```bash
https://githubusercontent.com.ipaddress.com/raw.githubusercontent.com
```

## zsh插件
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

`~/.zshrc`  `plugins  ` 增加  `zsh-autosuggestions`


# Vim
## nvim

```bash
apt-get install neovim
```

## nodejs
```bash
apt-get install neovim nodejs
```

## vim Plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Plug Install
```vim
:PlugInstall
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

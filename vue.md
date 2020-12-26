# Install
## update 
```bash
sudo apt update
sudo apt-get update
```

## install nodejs, npm
```bash
sudo apt-get install nodejs
sudo apt-get install npm
```

## change npm registry
```bash
sudo npm config -g set registry https://registry.npm.taobao.org
```

## update npm
```bash
sudo npm install cnpm -g
```

## install vue
```bash
cnpm install vue
```

## install vue-cli
```bash
sudo cnpm install --global vue-cli
```

## install vue-ui
```bash
sudo cnpm install -g @vue/cli
```

## install webpack
```bash
sudo cnpm install webpack -g
```

# create project
## create ad project by webpack
```bash
vue init webpack {{front_end}}
```

# run
## install package
```bash
cd {{front_end}}
cnpm install
```

## run dev
```bash
cnpm run dev
```
or 
```bash
vue ui
```

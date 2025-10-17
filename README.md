# Nvim Config

## 查看 config 目錄位置

```bash
:h rtp
# ~/.config/nvim
```

- windows 預設安裝位置:

```
C:\Users{userName}\AppData\Local\nvim
```

## 入口 (init.lua)

- 所有在 lua 資料夾底下的檔案都可以被引入
- init.lua 為入口文件

```
ls ~/.config/nvim

lua/
init.lua
```

## packer.nvim

- nvim 的包管理工具
- 安裝

```bash
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

```

### 更新套件

- 開啟 lua/settings/packer.lua
- 執行當前腳本 :source
- 使用指令 :PackerSync 下載包

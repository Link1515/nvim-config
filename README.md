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

- 啟動時會自動載入 `lua/settings/packer.lua`，可直接執行 `:PackerSync`。
- 修改套件清單後，開啟 `lua/settings/packer.lua`，先儲存，再執行 `:source %` 和 `:PackerSync`。
- 若尚未安裝插件，啟動時可能出現 `module not found`；同步完成後重新啟動 Neovim。

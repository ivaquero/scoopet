# 🍨 Scoopet 🍨

[![Excavator](https://github.com/ivaquero/scoopet/actions/workflows/schedule.yml/badge.svg)](https://github.com/ivaquero/scoopet/actions/workflows/schedule.yml)
[![license](https://img.shields.io/github/license/ivaquero/scoopet)](https://github.com/ivaquero/scoopet/blob/master/LICENSE)
[![code size](https://img.shields.io/github/languages/code-size/ivaquero/scoopet.svg)](https://img.shields.io/github/languages/code-size/ivaquero/scoopet.svg)
[![repo size](https://img.shields.io/github/repo-size/ivaquero/scoopet.svg)](https://img.shields.io/github/repo-size/ivaquero/scoopet.svg)

一个用于 Windows 最佳包管理器 [Scoop](https://github.com/lukesampson/scoop)的脚本仓库：持续助力科研

> 如果你想参与仓库管理，尽管通过 new issue 告知。

<p align="left">
<a href="README.md">English</a> |
<a href="README-CN.md">简体中文</a>
</p>

对于熟悉 Scoop 的用户：

```powershell
scoop bucket add scoopet https://github.com/ivaquero/scoopet
```

# :running: 开始

## :bike: 安装 Scoop

### :computer: 步骤 1：在 PowerShell 中打开远程权限

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### :gear: 步骤 2：自定义 Scoop 安装目录

```powershell
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir ['Scoop_Path'] -ScoopGlobalDir ['GlobalScoopApps_Path'] -NoProxy
# 例如
.\install.ps1 -ScoopDir 'C:\Scoop' -ScoopGlobalDir 'C:\Program Files' -NoProxy
```

> 如果跳过该步骤，Scoop 将默认把所有用户安装的 App 和 Scoop 本身置于 `c:/users/user_name/scoop`

### :hammer: 步骤 3：下载并安装 Scoop

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

### :book: 步骤 4：通过`scoop help`查看快速上手方法

更多信息，请访问 Scoop 官网 👉 <https://scoop.sh/> 👈

## :car: 利用扩展库安装 App

### :train: 步骤 1：安装 Aria2 来加速下载

```powershell
scoop install aria2
```

如果使用 VPN，需要通过如下命令关闭 aria2

```powershell
scoop config aria2-enabled false
```

### :ticket: 步骤 2：安装 Git 来添加新仓库

```powershell
scoop install git
```

### :airplane: 步骤 3：添加本仓库并更新，么么哒~ :kiss

```powershell
scoop bucket add scoopet https://github.com/ivaquero/scoopet
scoop update
```

### :rocket: 步骤 4：安装 App

- 使用 `scoop search` 命令搜索 App 的具体名称

```powershell
scoop search <app_name>
```

- 利用插件`scoop-completion`协助安装

```powershell
scoop install scoop-completion
scoop install <app_name>
```

> 使用`scoop-completion`：键入 App 名称的前几个字母后敲击`tab`键进行补全

### :100: 步骤 5：查看官方推荐仓库

```powershell
scoop bucket known

main [默认]
extras [墙裂推荐]
versions
nightlies
nirsoft
php
nerd-fonts
nonportable
java
games
jetbrains
```

## :m: 其他

### Aria2 的参数自定义

```powershell
# aria2 在 Scoop 中默认开启
scoop config aria2-enabled true
# 关于以下参数的作用，详见 aria2 的相关资料
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
```

## :star: 总结

### 科研工具

|          App          | 自动更新 |                         原创                         |
| :-------------------: | :------: | :--------------------------------------------------: |
|       KingDraw        |    √     |                          √                           |
| Mathpix-Snipping-Tool |    √     |                          √                           |
|   Mendeley-Desktop    |    √     |                          √                           |
|        NetLogo        |    √     |                          √                           |
|        TeXLive        |    √     | 修改自 [dorado](https://github.com/chawyehsu/dorado) |

### 日常工作

|          App           | 自动更新 |                          原创                           |
| :--------------------: | :------: | :-----------------------------------------------------: |
|      AutoDarkMode      |    √     |                            √                            |
|   Clash-for-Windows    |    √     |  复制于 [dorado](https://github.com/chawyehsu/dorado)   |
|      Clash-Verge       |    √     |                            √                            |
|     FileCentipede      |    √     |                    √ (by @CronusLM)                     |
|     File-Converter     |    √     |                            √                            |
|      n-m3u8dl-cli      |    √     |                    √ (by @CronusLM)                     |
|      RectangleWin      |    √     |                            √                            |
|         WinRAR         |    √     |                            √                            |
|      WiseCare365       |    √     |                            √                            |
| VMware-Workstation-Pro |    √     | 修改自 [Ash258](https://github.com/Ash258/Scoop-Ash258) |

### 国人产品

|   中文名称   |         App         | 自动更新  |                         原创                         |
| :----------: | :-----------------: | :-------: | :--------------------------------------------------: |
|   百度云盘   |    BaiduNetDisk     |     √     |                          √                           |
|              |      CAJViewer      |     √     |                 √ (by @rayinfinite)                  |
| 全球学术快报 |     CNKIExpress     |     √     |                 √ (by @rayinfinite)                  |
|     钉钉     |      DingTalk       |     √     |                          √                           |
|  哔哩下载姬  |       DownKyi       |     √     |                   √ (by @CronusLM)                   |
|              |    DiskGenius-cn    |     √     |                   √ (by @CronusLM)                   |
|              |      Edgeless       |     √     |                 √ (by @IsaacWangTT)                  |
|   欧路词典   |        Eudic        |           |                          √                           |
| 洛雪音乐助手 |      LX-Music       |     √     |                          √                           |
|              |   M3u8-Downloader   |     √     |                          √                           |
|  网易云音乐  |    NetEaseMusic     |     √     |                          √                           |
| 傲梅分区助手 | Partition-Assistant |     √     |                          √                           |
|   腾讯教育   |     Tencent-Edu     |     √     |                          √                           |
|   腾讯会议   |   Tencent-Meeting   | 3.5.6.416 |                  √ (by @Ryanjiena)                   |
| 每日英语听力 |       Ting-En       |     √     |                          √                           |
|              |       uTools        |     √     | 复制于 [dorado](https://github.com/chawyehsu/dorado) |
|    小狼毫    |       Weasel        |     √     |                          √                           |
|   企业微信   |     WeChatWork      |     √     |                          √                           |
|              |    WPSOffice-cn     |     √     |                          √                           |
|              |       You-Get       |     √     |                          √                           |
|     语雀     |        Yuque        |     √     | 复制于 [dorado](https://github.com/chawyehsu/dorado) |

### 开源镜像

|      App      | 自动更新 | 原创 |
| :-----------: | :------: | :--: |
|  Blender-cn   |    √     |  √   |
|    Git-cn     |    √     |  √   |
|    GIMP-cn     |       √       |     √      |
|  Inkscape-cn  |    √     |  √   |
|   Julia-cn    |    √     |  √   |
|    LyX-cn     |    √     |  √   |
| Mambaforge-cn |    √     |  √   |
| Miniconda-cn  |    √     |  √   |
| OBS-Studio-cn |    √     |  √   |
| Octave-cn |    √     |  √   |
|  SageMath-cn  |    √     |  √   |
| TeXStudio-cn  |    √     |  √   |
|    VLC-cn     |    √     |  √   |
|  VSCodium-cn  |    √     |  √   |

## 备注

由于 Win 到权限管理复杂，对于一些常见的不提供 portable 安装包，且需要管理员应用的权限，建议使用 WinGet 进行安装

```powerhsell
scoop install winget
winget install Tencent.QQ
```

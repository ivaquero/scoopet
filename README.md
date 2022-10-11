
# 🍨 Scoopet 🍨

[![Excavator](https://github.com/ivaquero/scoopet/actions/workflows/schedule.yml/badge.svg)](https://github.com/ivaquero/scoopet/actions/workflows/schedule.yml)
[![license](https://img.shields.io/github/license/ivaquero/scoopet)](https://github.com/ivaquero/scoopet/blob/master/LICENSE)
[![code size](https://img.shields.io/github/languages/code-size/ivaquero/scoopet.svg)](https://img.shields.io/github/languages/code-size/ivaquero/scoopet.svg)
[![repo size](https://img.shields.io/github/repo-size/ivaquero/scoopet.svg)](https://img.shields.io/github/repo-size/ivaquero/scoopet.svg)

A Bucket for the Best Windows Package Manager [Scoop](https://github.com/lukesampson/scoop): Continuously Assisting in Academic Research.

> If you would like to be a co-maintainer, feel free to create a new issue.

<p align="left">
<a href="README.md">English</a> |
<a href="README-CN.md">简体中文</a>
</p>

For ones familiar with Scoop:

```powershell
scoop bucket add scoopet https://github.com/ivaquero/scoopet
```

# :running: To Start

## :bike: Install Scoop

### :computer: Step 1: Enable remote policy in PowerShell

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### :gear: Step 2: Customize your Scoop directory

```powershell
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir ['Scoop_Path'] -ScoopGlobalDir ['GlobalScoopApps_Path'] -NoProxy
# for example
.\install.ps1 -ScoopDir 'C:\Scoop' -ScoopGlobalDir 'C:\Program Files' -NoProxy
```

> If you skip this step, all user installed Apps and Scoop itself will live in `c:/users/user_name/scoop`.

### :hammer: Step 3: Download and install Scoop

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

### :book: Step 4: Glance at quick-start by `scoop help`

For more information, please visit Scoop official site at 👉 https://scoop.sh/ 👈

## :car: Install Apps from this bucket

### :train: Step 1: Install Aria2 to accelerate downloading

```powershell
scoop install aria2
```

### :ticket: Step 2: Install Git to add new repositories

```powershell
scoop install git
```

if you are using VPN, you need to turn off aria2 before installing Apps

```powershell
scoop config aria2-enabled false
```

### :airplane: Step 3: Add this wonderful bucket and update, mo-mo-da~ :kiss:

```powershell
scoop bucket add scoopet https://github.com/ivaquero/scoopet
scoop update
```

### :rocket: Step 4: Install Apps

- Check the exact name of App by `scoop search`

```powershell
scoop search <app_name>
```

- Install Apps with assistance of plugin `scoop-completion`

```powershell
scoop install scoop-completion
scoop install <app_name>
```

> to use `scoop-completion`, just to hit `tab` after initial letters of App names

### :100: Step 5: List the official recommended buckets by `scoop bucket known`

```powershell
scoop bucket known

main [default]
extras [strongly recommended]
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

## :m: Trivial

### Tweak with Parameters in Aria2

```powershell
scoop config aria2-enabled true
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
```

## :star: Summary

### Research Tools

|          App          | Auto-Update ? | Original ?                                                |
| :-------------------: | :-----------: | --------------------------------------------------------- |
|       CAJViewer       |       √       | √ (added by @rayinfinite)                                 |
|      CNKIExpress      |       √       | √ (added by @rayinfinite)                                 |
|         Eudic         |       √       | √                                                         |
|       Julia-cn        |       √       | √                                                         |
|       KingDraw        |       √       | √                                                         |
|        LyX-cn         |       √       | √                                                         |
| Mathpix-Snipping-Tool |       √       | √                                                         |
|   Mendeley-Desktop    |       √       | √                                                         |
|     Mambaforge-cn     |       √       | √                                                         |
|     Miniconda-cn      |       √       | √                                                         |
|        NetLogo        |       √       | √                                                         |
|      SageMath-cn      |       √       | √                                                         |
|        Ting-En        |       √       | √                                                         |
|        TeXLive        |       √       | modified [dorado](https://github.com/chawyehsu/dorado)    |
|     Yuque Desktop     |       √       | copied from [dorado](https://github.com/chawyehsu/dorado) |

### Development Auxillary

|          App           | Auto-Update ? | Original ?                                                |
| :--------------------: | :-----------: | --------------------------------------------------------- |
|   Clash-for-Windows    |       √       | copied from [dorado](https://github.com/chawyehsu/dorado) |
|     DiskGenius-cn      |       √       | √ (added by @CronusLM)                                    |
|  Partition-Assistant   |       √       | √                                                         |
|      RectangleWin      |       √       | √                                                         |
|         uTools         |       √       | copied from [dorado](https://github.com/chawyehsu/dorado) |
| VMware-Workstation-Pro |       √       | modified [Ash258](https://github.com/Ash258/Scoop-Ash258) |

### Daily Work

|       App       | Auto-Update ? | Original ?              |
| :-------------: | :-----------: | ----------------------- |
|  BaiduNetDisk   |       √       | √                       |
| File-Converter  |       √       | √                       |
| M3u8-Downloader |       √       | √                       |
|  OBS-Studio-cn  |       √       | √                       |
|    RustDesk     |       √       | √                       |
| Tencent-Meeting |       √       | √ (added by @Ryanjiena) |
|     Weasel      |       √       | √                       |
|   WiseCare365   |       √       | √                       |
|  WPSOffice-cn   |       √       | √                       |

### Social & Entertainment

|     App      | Auto-Update ? | Original ?                |
| :----------: | :-----------: | ------------------------- |
|   DingTalk   |       √       | √                         |
|   DownKyi    |       √       | √ (added by @CronusLM)    |
|   Edgeless   |       √       | √ (added by @IsaacWangTT) |
|   LX-Music   |       √       | √                         |
|   magnetW    |       √       | √                         |
| NetEaseMusic |       √       | √                         |
| Tencent-Edu  |       √       | √                         |
|  WeChatWork  |       √       | √                         |
|   You-Get    |       √       | √                         |

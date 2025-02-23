# 🍨 Scoopet 🍨

[![Excavator](https://github.com/ivaquero/scoopet/actions/workflows/ci.yml/badge.svg)](https://github.com/ivaquero/scoopet/actions/workflows/ci.yml)
[![license](https://img.shields.io/github/license/ivaquero/scoopet)](https://github.com/ivaquero/scoopet/blob/master/LICENSE)
[![code size](https://img.shields.io/github/languages/code-size/ivaquero/scoopet.svg)](https://img.shields.io/github/languages/code-size/ivaquero/scoopet.svg)
[![repo size](https://img.shields.io/github/repo-size/ivaquero/scoopet.svg)](https://img.shields.io/github/repo-size/ivaquero/scoopet.svg)

⚠️ For a better management, this repo now intends to only contains scripts for Chinese users in the near future, for international softwares, please try the bucket [Extras-Plus](https://github.com/Scoopforge/Extras-Plus).

<p align="left">
<a href="README-EN.md">English</a> |
<a href="README.md">简体中文</a>
</p>

For ones familiar with Scoop:

```powershell
scoop bucket add scoopet https://github.com/ivaquero/scoopet
```

# 🏃 To Start

## 🚲 Install Scoop

### 💻 Step 1: Enable remote policy in PowerShell

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### ⚙️ Step 2: Download and install Scoop

```powershell
irm get.scoop.sh -outfile 'install.ps1'
.\install.ps1 -ScoopDir ['Scoop_Path'] -ScoopGlobalDir ['GlobalScoopApps_Path'] -NoProxy
# for example
.\install.ps1 -ScoopDir 'C:\Scoop' -ScoopGlobalDir 'C:\Program Files' -NoProxy
```

> If you skip this step, all user installed Apps and Scoop itself will live in `c:/users/user_name/scoop`.

### 📖 Step 3: Glance at quick-start by `scoop help`

For more information, please visit Scoop official site at 👉 https://scoop.sh/ 👈

## 🚗 Install Apps from this bucket

### 🚋 Step 1: Install Aria2 to accelerate downloading

```powershell
scoop install aria2
```

### 🎫 Step 2: Install Git to add new repositories

```powershell
scoop install git
```

if you are using VPN, you need to turn off aria2 before installing Apps

```powershell
scoop config aria2-enabled false
```

### ✈️ Step 3: Add this wonderful bucket and update, mua~ 💋

```powershell
scoop bucket add main-plus https://github.com/ivaquero/scoop-main-plus
scoop update
```

### 🚀 Step 4: Install Apps

#### Check the exact name of App by `scoop search`

```powershell
scoop search <app_name>
```

#### Install Apps with assistance of plugin `scoop-completion`

```powershell
scoop install scoop-completion
scoop install <app_name>
```

> to use `scoop-completion`, just to hit `tab` after initial letters of App names

## 📝 Trivial

### Tweak with Parameters in Aria2

```powershell
scoop config aria2-enabled true
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
```

## ⭐️ Summary

### Research

|        App         | Auto-Update ? |                        Original ?                         |
| :----------------: | :-----------: | :-------------------------------------------------------: |
| Jupyterlab-Desktop |       ✓       |  modified [gdm257](https://github.com/gdm257/scoop-257)   |
|      KingDraw      |       ✓       |                             ✓                             |
|  Mendeley-Desktop  |       ✓       |                             ✓                             |
|      NetLogo       |       ✓       |                             ✓                             |
|    Pot-Desktop     |       ✓       |                             ✓                             |
|     SciHubEVA      |       ✓       |                             ✓                             |
|      TeXLive       |       ✓       | modified [chawyehsu](https://github.com/chawyehsu/dorado) |

### Windows-Only

|          App           | Auto-Update ? |                        Original ?                         |
| :--------------------: | :-----------: | :-------------------------------------------------------: |
|      AutoDarkMode      |       ✓       |                             ✓                             |
|     FileCentipede      |       ✓       |                     ✓ (by @CronusLM)                      |
|    LKY-Officetools     |       ✓       |  copied from [DoveBoy](hhttps://github.com/DoveBoy/Apps)  |
| VMware-Workstation-Pro |       ✓       | modified [Ash258](https://github.com/Ash258/Scoop-Ash258) |
|    WIFI-Crack-Tool     |       ✓       |                             ✓                             |

## Notes

Due to the complexity of Win to permission management, for some common applications that do not provide portable installation packages and require administrator application permissions, it is recommended to use WinGet for installation

```powershell
scoop install winget
winget install Rakuten.Viber
```

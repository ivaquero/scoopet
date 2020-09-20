<div align="left">
<h1 align="left"> 🍨 Scoopet 🍨 </h1>
<p>
<a>
<img src="https://ci.appveyor.com/api/projects/status/kbd3a9mibncbx8ds?svg=true"/>
</a>
<a>
<img src="https://img.shields.io/github/languages/code-size/integzz/scoopet.svg">
</a>
<a>
<img src="https://img.shields.io/github/repo-size/integzz/scoopet.svg">
</a>
<a>
<img src="https://img.shields.io/github/license/integzz/scoopet">
</a>
</p>
</div>

<p></p>

<div>
<p> A Bucket for the Best Windows Package Manager <a href="https://github.com/lukesampson/scoop"> Scoop </a>: Continuously Assisting in Academic Research.
</p>

<p align="left">
        <a href="README.md">English</a> | <a href="README_CN.md">简体中文</a>
</p>
</div>

For ones familiar with Scoop:

```
scoop bucket add scoopet https://github.com/integzz/scoopet
```

# :running: To Start

## :bike: Install Scoop

### :computer: Step 1: Enable remote policy in PowerShell

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### :gear: Step 2: Customize your Scoop directory

```powershell
$env:SCOOP='Your_Scoop_Path'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
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
scoop bucket add scoopet https://github.com/integzz/scoopet
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

|           App            |  Version   |   Installer    | Origenal ?                                                            |
| :----------------------: | :--------: | :------------: | --------------------------------------------------------------------- |
|      CopyTranslator      |   9.2.0    | Community zip  | Yes                                                                   |
|    GeoGebra-Portable     |  6.0.604   |  Official zip  | Yes                                                                   |
|          Gephi           |    0.92    |  Official exe  | Yes                                                                   |
|        Grammarly         |  1.5.68.0  |  Official exe  | [Ash258](https://github.com/Ash258/Scoop-Ash258)-borrowed             |
|         Julia-cn         |   1.5.0    |   Mirror exe   | Yes                                                                   |
|         KingDraw         |  1.1.2.0   |  Official exe  | Yes                                                                   |
|          LyX-cn          |   2.3.5    |   Mirror exe   | Yes                                                                   |
|  Mathpix Snipping Tool   | 02.05.0017 |  Official exe  | Yes                                                                   |
|     Mendeley Desktop     |   1.19.6   |  Official exe  | Yes                                                                   |
|       Miniconda-cn       |   4.8.3    |   Mirror exe   | [Extras](https://github.com/lukesampson/scoop-extras)-modified        |
|         NetLogo          |   6.1.1    |  Official msi  | Yes                                                                   |
|         Obsidian         |   0.8.12   | [Community exe | [Sushi](https://github.com/kidonng/sushi/tree/master/bucket)-borrowed |
| Cytoscape [Debugging...] |   3.8.0    |  Official zip  | Yes                                                                   |

### Development Auxillary

|               App                |     Version     |      Installer       | Origenal ?                                                |
| :------------------------------: | :-------------: | :------------------: | --------------------------------------------------------- |
|            Cyberduck             |   7.5.1.33324   |     Official msi     | Yes                                                       |
|       Partition Assistant        |       8.3       |     Official zip     | Yes                                                       |
|         scoop-completion         |      0.2.3      |    Community psm1    | [Ash258](https://github.com/Ash258/Scoop-Ash258)-borrowed |
|              uTools              |       1.3       |     Official exe     | [dorado](https://github.com/chawyehsu/dorado)-borrowed    |
| VirtualBox [with Extension Pack] |     6.1.10      |     Official exe     | [Ash258](https://github.com/Ash258/Scoop-Ash258)-borrowed |
|      VMware Workstation Pro      | 15.5.2-15785246 |     Official exe     | [Ash258](https://github.com/Ash258/Scoop-Ash258)-borrowed |
|              WinGet              |    0.2.2521     | Community appxbundle | [Ash258](https://github.com/Ash258/Scoop-Ash258)-borrowed |

### Daily Work

|        App         |   Version   |   Installer   | Origenal ?                                                            |
| :----------------: | :---------: | :-----------: | --------------------------------------------------------------------- |
|    BaiduNetDisk    |  7.0.4.11   | Official exe  | Yes                                                                   |
|   File Converter   | 7.2.5.32097 | Official msi  | Yes                                                                   |
|      Lingoes       |    2.9.2    | Community zip | Yes                                                                   |
|   Microsoft Edge   | 85.0.564.51 |  Official 7z  | [Sushi](https://github.com/kidonng/sushi/tree/master/bucket)-borrowed |
|  Office Tool Plus  |   7.6.0.1   | Community exe | Yes                                                                   |
| VeraCrypt-Portable |    1.246    | Community exe | Yes                                                                   |
|   Wise Care 365    |  5.5.7.552  | Community exe | Yes                                                                   |
| Wise Disk Cleaner  | 10.3.1.783  | Official exe  | [Ash258](https://github.com/Ash258/Scoop-Ash258)-borrowed             |
|     WPSOffice      | 11.1.0.9912 | Official exe  | [dorado](https://github.com/chawyehsu/dorado)-borrowed                |

### Social & Entertainment

|        App        |   Version    |   Installer   | Origenal ?                                                            |
| :---------------: | :----------: | :-----------: | --------------------------------------------------------------------- |
|     Ding Talk     |  5.1.21.19   | Official exe  | Yes                                                                   |
|     LX Music      |    1.0.1     |  Official 7z  | Yes                                                                   |
|   Netease Music   | 2.7.1.198242 | Official exe  | [dorado](https://github.com/chawyehsu/dorado)-borrowed                |
|      Wechat       |    2.9.5     | Official exe  | [dorado](https://github.com/chawyehsu/dorado)-borrowed                |
|      WeMeet       |  1.9.0.448   | Official exe  | [Sushi](https://github.com/kidonng/sushi/tree/master/bucket)-borrowed |
|      You-Get      |   0.4.1403   | Community whl | Yes                                                                   |
| QQ [Debugging...] |    9.2.3     | Official exe  | [dorado](https://github.com/chawyehsu/dorado)-borrowed                |

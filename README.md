<div align="left">
<h1 align="left"> 🍨 Scoopet 🍨 </h1>
</div>

[![Build status](https://ci.appveyor.com/api/projects/status/kbd3a9mibncbx8ds?svg=true)](https://ci.appveyor.com/project/integzz/scoopet)

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

|           App            |   Version    |   Installer   | Homepage                                  |
| :----------------------: | :----------: | :-----------: | ----------------------------------------- |
|      CopyTranslator      |    9.1.0     | Community zip | https://copytranslator.github.io/         |
|    GeoGebra-Portable     |   6.0.596    | Official zip  | https://www.geogebra.org/                 |
|          Gephi           |     0.92     | Official exe  | https://gephi.org/                        |
|      GIMP-Portable       |  2.10.18-2   | Community exe | https://www.gimp.org/                     |
|        Grammarly         |   1.5.66.0   | Official exe  | https://www.grammarly.com/native/windows/ |
|         Julia-cn         |    1.5.0     |  Mirror exe   | https://julialang.org/                    |
|  Mathpix Snipping Tool   |  02.05.0009  | Official exe  | https://mathpix.com/                      |
|     Mendeley Desktop     |    1.19.6    | Official exe  | https://www.mendeley.com/                 |
|       Miniconda-cn       |    4.8.3     |  Mirror exe   | https://conda.io/miniconda.html/          |
|         NetLogo          |    6.1.1     | Official msi  | https://ccl.northwestern.edu/netlogo/     |
|           Kite           | 1.2020.327.0 | Official exe  | https://kite.com/                         |
|           Weka           |    3.8.4     | Official exe  | https://www.cs.waikato.ac.nz/ml/weka/     |
| Cytoscape [Debugging...] |    3.8.0     | Official zip  | https://cytoscape.org/                    |

### Development Auxillary

|               App                |     Version     |   Installer   | Homepage                                        |
| :------------------------------: | :-------------: | :-----------: | ----------------------------------------------- |
|       Adoptopenjdk-Hotspot       |    14.0.1-7     | Official zip  | https://adoptopenjdk.net/                       |
|            Cyberduck             |   7.4.1.33065   | Official msi  | https://cyberduck.io/                           |
|       Partition Assistant        |       8.3       | Official zip  | https://www.disktool.cn/                        |
|              uTools              |      1.1.3      | Official exe  | https://u.tools/                                |
| VirtualBox [with Extension Pack] |     6.1.10      | Official exe  | https://www.virtualbox.org/                     |
|      VMware Workstation Pro      | 15.5.2-15785246 | Official exe  | https://www.vmware.com/                         |
|         scoop-completion         |      0.2.3      | Community zip | https://github.com/Moeologist/scoop-completion/ |

### Daily Work

|        App         |   Version   |   Installer   | Homepage                                     |
| :----------------: | :---------: | :-----------: | -------------------------------------------- |
|    BaiduNetDisk    |  6.9.10.1   | Official exe  | https://pan.baidu.com/                       |
|   File Converter   | 7.2.5.32097 | Official msi  | https://file-converter.org/                  |
|      Lingoes       |    2.9.2    | Community zip | http://www.lingoes.cn/                       |
|  Office Tool Plus  |   7.6.0.1   | Community exe | https://github.com/YerongAI/Office-Tool/     |
|      Picosmos      |   2.6.0.0   | Official exe  | http://www.picosmos.net/                     |
|      Tablacus      |   20.8.6    | Community zip | https://tablacus.github.io/explorer_en.html/ |
| VeraCrypt-Portable |    1.246    | Community exe | https://www.veracrypt.fr/                    |
|     WPSOffice      | 11.1.0.9912 | Official exe  | https://pc.wps.cn/                           |


### Social & Entertainment

|        App        |   Version    |   Installer   | Homepage                            |
| :---------------: | :----------: | :-----------: | ----------------------------------- |
|   Netease Music   | 2.7.1.198242 | Official exe  | https://music.163.com/              |
|      Wechat       |    2.9.5     | Official exe  | https://pc.weixin.qq.com/           |
|      You-Get      |   0.4.1403   | Community zip | https://github.com/soimort/you-get/ |
| QQ [Debugging...] |    9.2.3     | Official exe  | https://im.qq.com/pcqq/             |

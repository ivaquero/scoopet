<div align="left">
<h1 align="left"> 🍨 Scoopet 🍨 </h1>

<p> A Personal Bucket for the Best Windows Package Manager <a href="https://github.com/lukesampson/scoop">Scoop</a>.
</p>

<p align="left">
        <a href="README.md">English</a>|<a href="README_CN.md">简体中文</a>
</p>
</div>

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

> If you skip this step, all user installed Apps and Scoop itself will live in `C:\Users\user_name\scoop`.

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

|           App            |   Version    |  Installer   | Homepage                              |
| :----------------------: | :----------: | :----------: | ------------------------------------- |
|      CopyTranslator      |    9.0.1     | Portable zip | https://copytranslator.github.io/     |
|         GeoGebra         |   6.0.578    | Portable zip | https://www.geogebra.org/             |
|          Gephi           |     0.92     | Official exe | https://gephi.org/                    |
|     GIMP (Portable)      |  2.10.18-2   | Portable exe | https://www.gimp.org/                 |
|           LyX            |    2.3.4     | Official exe | https://www.lyx.org/                  |
|  Mathpix Snipping Tool   |  02.01.0021  | Official exe | https://mathpix.com/                  |
|     Mendeley Desktop     |    1.19.4    | Official exe | https://www.mendeley.com/             |
|        Miniconda         |    4.8.2     | Official exe | https://conda.io/miniconda.html       |
|         NetLogo          |    6.1.1     | Official msi | https://ccl.northwestern.edu/netlogo/ |
|           Kite           | 1.2020.327.0 | Official exe | https://kite.com/                     |
|         SciDAVis         |     1.26     | Official msi | http://scidavis.sourceforge.net/      |
|           Weka           |    3.8.4     | Official exe | https://www.cs.waikato.ac.nz/ml/weka/ |
| Cytoscape [Debugging...] |    3.8.0     | Official zip | https://cytoscape.org/                |

### Development Auxillary

|               App                |     Version     |   Installer   | Homepage                                        |
| :------------------------------: | :-------------: | :-----------: | ----------------------------------------------- |
|       Adoptopenjdk-Hotspot       |    14.0.1-7     | Official zip  | https://adoptopenjdk.net                        |
|            Cyberduck             |   7.3.1.32784   | Official msi  | https://cyberduck.io/                           |
|              uTools              |   1.0.0-beta    | Official exe  | https://u.tools/                                |
| VirtualBox [with Extension Pack] |      6.1.6      | Official exe  | https://www.virtualbox.org/                     |
|      VMware Workstation Pro      | 15.5.2-15785246 | Official exe  | https://www.vmware.com/                         |
|         scoop-completion         |      0.2.2      | Community zip | https://github.com/Moeologist/scoop-completion/ |
|           scoop-viewer           |      0.8.1      | Community zip | https://github.com/prezesp/scoop-viewer/        |

### Daily Work

|       App        |   Version    |  Installer   | Homepage                                 |
| :--------------: | :----------: | :----------: | ---------------------------------------- |
|  Activity Watch  |    0.9.2     | Official zip | https://activitywatch.net/               |
| Adobe Acrobat DC | 19.021.20061 | Official exe | https://acrobat.adobe.com/               |
|   BaiduNetDisk   |   6.9.5.1    | Official exe | https://pan.baidu.com/                   |
|  File Converter  | 7.2.5.32097  |   官方 msi   | https://file-converter.org/              |
| Office Tool Plus |   7.5.0.3    | Official exe | https://github.com/YerongAI/Office-Tool/ |
|    WPSOffice     | 11.1.0.9584  | Official exe | https://pc.wps.cn/                       |

|     Lingoes      |    2.9.2     | Portable zip | http://www.lingoes.cn/                   |
|     Picosmos     |   2.6.0.0    | Official exe | http://www.picosmos.net/                 |

### Social & Entertainment

|        App        |   Version    |   Installer   | Homepage                            |
| :---------------: | :----------: | :-----------: | ----------------------------------- |
|   Netease Music   | 2.7.1.198242 | Official exe  | https://music.163.com/              |
|      Wechat       |     2.9      | Official exe  | https://pc.weixin.qq.com/           |
|      You-Get      |   0.4.1403   | Community zip | https://github.com/soimort/you-get/ |
| QQ [Debugging...] |    9.2.3     | Official exe  | https://im.qq.com/pcqq/             |

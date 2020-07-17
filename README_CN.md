<div align="left">
<h1 align="left"> 🍨 Scoopet 🍨 </h1>

<p>
一个用于 Windows 最佳命令行软件管理器<a href="https://github.com/lukesampson/scoop">Scoop</a>的脚本仓库：致力于便利科研
</p>

<p align="left">
        <a href="README.md">English</a> | <a href="README_CN.md">简体中文</a>
</p>
</div>

对于熟悉 Scoop 的用户：

```
scoop bucket add scoopet https://github.com/integzz/scoopet
```

# :running: 开始

## :bike: 安装 Scoop

### :computer: 步骤 1：在 PowerShell 中打开远程权限

```powershell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

### :gear: 步骤 2：自定义 Scoop 安装目录

```powershell
$env:SCOOP='Your_Scoop_Path'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
```

> 如果跳过该步骤， Scoop 将默认把所有用户安装的 App 和 Scoop 本身置于`C:\Users\user_name\scoop`

### :hammer: 步骤 3：下载并安装 Scoop

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

### :book: 步骤 4：通过`scoop help`查看快速上手方法

更多信息，请访问 Scoop 官网 👉 https://scoop.sh/ 👈

## :car: 利用扩展库安装 App

### :train: 步骤 1：安装 Aria2 来加速下载

```powershell
scoop install aria2
```

如果使用VPN，需要通过如下命令关闭 aria2

```powershell
scoop config aria2-enabled false
```

### :ticket: 步骤 2：安装 Git 来添加新仓库

```powershell
scoop install git
```

### :airplane: 步骤 3：添加本仓库并更新，么么哒~ :kiss:

```powershell
scoop bucket add scoopet https://github.com/integzz/scoopet
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

### Aria2的参数自定义

```powershell
# aria2 在 Scoop 中默认开启
scoop config aria2-enabled true
# 关于以下参数的作用，详见aria2的相关资料
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
```

## :star: 总结

### 科研工具

|           App            |     版本     | 安装文件 | 官网                                      |
| :----------------------: | :----------: | :------: | ----------------------------------------- |
|      CopyTranslator      |    9.1.0     | 便携 zip | https://copytranslator.github.io/         |
|         GeoGebra         |   6.0.591    | 便携 zip | https://www.geogebra.org/                 |
|          Gephi           |     0.92     | 官方 exe | https://gephi.org/                        |
|     GIMP (Portable)      |  2.10.18-2   | 便携 exe | https://www.gimp.org/                     |
|        Grammarly         |   1.5.65.0   | 官方 exe | https://www.grammarly.com/native/windows/ |
|          Julia           |     1.5      | 镜像 exe | https://julialang.org/                    |
|  Mathpix Snipping Tool   |  02.05.0009  | 官方 exe | https://mathpix.com/                      |
|     Mendeley Desktop     |    1.19.6    | 官方 exe | https://www.mendeley.com/                 |
|        Miniconda3        |    4.8.3     | 镜像 exe | https://conda.io/miniconda.html/          |
|         NetLogo          |    6.1.1     | 官方 msi | https://ccl.northwestern.edu/netlogo/     |
|           Kite           | 1.2020.327.0 | 官方 exe | https://kite.com/                         |
|           Weka           |    3.8.4     | 官方 exe | https://www.cs.waikato.ac.nz/ml/weka/     |
| Cytoscape [构建中。。。] |    3.8.0     | 官方 zip | https://cytoscape.org/                    |

### 开发辅助

|          App           |      版本       | 安装文件 | 官网                                            |
| :--------------------: | :-------------: | :------: | ----------------------------------------------- |
|  Adoptopenjdk-Hotspot  |    14.0.1-7     | 官方 zip | https://adoptopenjdk.net/                       |
|       Cyberduck        |   7.4.1.33065   | 官方 msi | https://cyberduck.io/                           |
|       Powertoys        |     0.19.2      | 社区 msi | https://github.com/microsoft/PowerToys          |
|         uTools         |      1.1.3      | 官方 exe | https://u.tools/                                |
| VirtualBox [含扩展包]  |     6.1.10      | 官方 exe | https://www.virtualbox.org/                     |
| VMware Workstation Pro | 15.5.2-15785246 | 官方 exe | https://www.vmware.com/                         |
|    scoop-completion    |      0.2.3      | 社区 zip | https://github.com/Moeologist/scoop-completion/ |

### 日常办公

|        App         |     版本     | 安装文件 | 官网                                     |
| :----------------: | :----------: | :------: | ---------------------------------------- |
|  Adobe Acrobat DC  | 19.021.20061 | 官方 exe | https://acrobat.adobe.com/               |
|   File Converter   | 7.2.5.32097  | 官方 msi | https://file-converter.org/              |
|  Office Tool Plus  |   7.6.0.0    | 官方 exe | https://github.com/YerongAI/Office-Tool/ |
| VeraCrypt-Portable |    1.246     | 便携 exe | https://www.veracrypt.fr/                |
|     WPSOffice      | 11.1.0.9828  | 官方 exe | https://pc.wps.cn/                       |
|      百度网盘      |   6.9.10.1   | 官方 exe | https://pan.baidu.com/                   |
|     灵格斯词霸     |    2.9.2     | 便携 zip | http://www.lingoes.cn/                   |
|      图片工厂      |   2.6.0.0    | 官方 exe | http://www.picosmos.net/                 |

### 社交休闲

|        App        |     版本     | 安装文件 | 官网                                |
| :---------------: | :----------: | :------: | ----------------------------------- |
|    网易云音乐     | 2.7.1.198242 | 官方 exe | https://music.163.com/              |
|       微信        |    2.9.5     | 官方 exe | https://pc.weixin.qq.com/           |
|      You-Get      |   0.4.1403   | 社区 zip | https://github.com/soimort/you-get/ |
| QQ [构建中。。。] |    9.2.3     | 官方 exe | https://im.qq.com/pcqq/             |

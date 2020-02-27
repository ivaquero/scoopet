<div align="left">
<h1 align="left"> 🍨 Scoopet 🍨 </h1>

<p>
一个用于 Windows 最佳命令行软件管理器<a href="https://github.com/lukesampson/scoop">Scoop</a>的脚本仓库
</p>

<p align="left">
        <a href="README.md">English</a>|<a href="README_CN.md">简体中文</a>
</p>
</div>

# 开始 🏃

## 安装 Scoop 🚴

在 PowerShell 中运行如下命令:

```powershell
set-executionpolicy remotesigned -s currentuser
iwr -useb get.scoop.sh | iex
```

默认设置中所有用户安装的程序和 Scoop 本身都位于`C:\Users\<user>\`。您可以在安装之前通过运行以下命令将Scoop安装到自定义目录：

```powershell
$env:SCOOP='C:\Scoop'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
```

更多信息，请访问 Scoop 官网 👉 https://scoop.sh/ 👈

## 利用扩展库安装 App 🚗

在 PowerShell 或 Cmd 中运行如下命令:

### 步骤 1: 安装 Aria2 来加速下载 🚅

```powershell
scoop install aria2
```

### 步骤 2: 安装 Git 来更新仓库 🎫

```powershell
scoop install git
```

### 步骤 3: 添加本仓库并更新，么么哒~ 💋 ✈️

```powershell
scoop bucket add scoopet https://github.com/integzz/scoopet
scoop update
```

### 步骤 4: 安装 App 🚀

- 使用 `scoop search` 命令搜索 App 的具体名称:

```powershell
scoop search <app_name>
```

- 利用插件`scoop-completion`协助安装：

```powershell
scoop install scoop-completion
scoop install <app_name>
```

> 使用`scoop-completion`：键入 App 名称的前几个字母后敲击`tab`键进行补全

#### 推荐: 同时添加仓库 Extra 💯

```powershell
scoop bucket add extra
scoop update
```

#### 快速学习 Scoop 使用方法 📖

```powershell
scoop help
```

## 总结 ⭐️

|           App           |     版本      | 安装文件 | 官网                                    |
| :---------------------: | :-----------: | :------: | --------------------------------------- |
|     Activity Watch      |     0.8.4     | 官方 zip | https://activitywatch.net/              |
| Adobe Acrobat Reader DC | 19.021.20061  | 官方 exe | https://acrobat.adobe.com/              |
|        百度网盘         |    6.8.9.1    | 社区 exe | https://pan.baidu.com/                  |
|        Cyberduck        |  7.2.5.32097  | 官方 msi | https://cyberduck.io/                   |
|     File Converter      |     1.2.3     | 官方 msi | https://file-converter.org/             |
|        GeoGebra         |    6.0.573    | 便携 zip | https://www.geogebra.org/               |
|   Kite [构建中。。。]   |     0.2.2     | 官方 exe | https://kite.com/                       |
|       灵格斯词霸        |     2.9.2     | 便携 zip | http://www.lingoes.cn/                  |
|           LyX           |     2.3.3     | 官方 exe | https://www.lyx.org/                    |
|  Mathpix Snipping Tool  |  02.01.0021   | 官方 exe | https://mathpix.com/                    |
|    Mendeley Desktop     |    1.19.5     | 官方 exe | https://www.mendeley.com/               |
|       网易云音乐        | 2.7.1.198242  | 官方 exe | https://music.163.com/                  |
|    Office Tool Plus     |    7.5.0.3    | 官方 exe | https://github.com/YerongAI/Office-Tool |
|    QQ [构建中。。。]    |     9.2.3     | 官方 exe | https://im.qq.com/pcqq/                 |
|  Scilab [构建中。。。]  |     6.0.2     | 官方 exe | https://www.scilab.org/                 |
|         uTools          |  0.8.9-beta   | 官方 exe | https://u.tools/                        |
|  VirtualBox [含扩展包]  |     6.1.2     | 官方 exe | https://www.virtualbox.org/             |
| VMware Workstation Pro  |    15.5.1     | 官方 exe | https://www.vmware.com/                 |
|          微信           | Beta 2.7.1.85 | 官方 exe | https://weixin.qq.com/                  |
|        WPSOffice        |  11.1.0.9339  | 官方 exe | https://pc.wps.cn/                      |
|        XnConvert        |     1.83      | 官方 zip | https://www.xnview.com/en/xnconvert/    |
|         You-Get         |   0.4.1403    | 官方 zip | https://github.com/soimort/you-get      |

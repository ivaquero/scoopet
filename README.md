<div align="left">
<h1 align="left"> 🍨 Scoopet 🍨 </h1>

<p> A Personal Bucket for the Best Windows Package Manager <a href="https://github.com/lukesampson/scoop">Scoop</a>.
</p>

<p align="left">
        <a href="README.md">English</a>|<a href="README_CN.md">简体中文</a>
</p>
</div>

# To Start 🏃

## Install Scoop 🚴

Run the below commands in PowerShell:

```powershell
set-executionpolicy remotesigned -s currentuser
iwr -useb get.scoop.sh | iex
```

For more information, please visit Scoop official site at 👉 https://scoop.sh/ 👈

## Install Apps from this bucket 🚗

Run the below commands in PowerShell or Cmd:

### Step 1: Install Aria2 to accelerate downloading 🚅

```powershell
scoop install aria2
```

You can tweak the following `aria2` settings with the `scoop config` command:

```powershell
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M
```

### Step 2: Install Git for updating 🎫

```powershell
scoop install git
```

### Step 3: Add this wonderful bucket and update, mo-mo-da~ 💋 ✈️

```powershell
scoop bucket add scoopet https://github.com/integzz/scoopet
scoop update
```

### Step 4: Install Apps 🚀

- Check the exact name of App by `scoop search` command:

```powershell
scoop search <app_name>
```

- Install Apps with assistance of plugin `scoop-completion`:

```powershell
scoop install scoop-completion
scoop install <app_name>
```

> to use `scoop-completion`, just to hit `tab` after first letters of App names

#### Recommendation: Add the bucket Extra 💯

```powershell
scoop bucket add extra
scoop update
```

#### For quick-start usage of Scoop 📖

```powershell
scoop help
```

## Summary ⭐️

|               App                |    Version    |  Installer   | Offical site                         |
| :------------------------------: | :-----------: | :----------: | ------------------------------------ |
|          Activity Watch          |     0.8.4     | Official zip | https://activitywatch.net/           |
|     Adobe Acrobat Reader DC      | 19.021.20061  | Official exe | https://acrobat.adobe.com/           |
|           BaiduNetdisk           |    6.8.9.1    | Nightly exe  | https://pan.baidu.com/               |
|            Cyberduck             |  7.2.5.32097  | Official msi | https://cyberduck.io/                |
|          File Converter          |     1.2.3     | Official msi | https://file-converter.org/          |
|             GeoGebra             |    6.0.573    | Portable zip | https://www.geogebra.org/            |
|       Kite [Debugging...]        |     0.2.2     | Official exe | https://kite.com/                    |
|             Lingoes              |     2.9.2     | Portable zip | http://www.lingoes.cn/               |
|               LyX                |     2.3.3     | Official exe | https://www.lyx.org/                 |
|      Mathpix Snipping Tool       |  02.01.0021   | Official exe | https://mathpix.com/                 |
|         Mendeley Desktop         |    1.19.5     | Official exe | https://www.mendeley.com/            |
|           NeteaseMusic           | 2.7.1.198242  | Official exe | https://music.163.com/               |
|        QQ [Debugging...]         |     9.2.3     | Official exe | https://im.qq.com/pcqq/              |
|      Scilab [Debugging...]       |     6.0.2     | Official exe | https://www.scilab.org/              |
|              uTools              |  0.8.9-beta   | Official exe | https://u.tools/                     |
| VirtualBox [with Extension Pack] |     6.1.2     | Official exe | https://www.virtualbox.org/          |
|      VMware Workstation Pro      |    15.5.1     | Official exe | https://www.vmware.com/              |
|              WeChat              | Beta 2.7.1.85 | Official exe | https://weixin.qq.com/               |
|            WPSOffice             |  11.1.0.9339  | Official exe | https://pc.wps.cn/                   |
|            XnConvert             |     1.83      | Official zip | https://www.xnview.com/en/xnconvert/ |
|             You-Get              |   0.4.1403    | Portable zip | https://github.com/soimort/you-get   |

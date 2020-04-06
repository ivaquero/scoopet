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
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

Customize your Scoop directory:

```powershell
$env:SCOOP='C:\Scoop'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
```

> If you skip this step, all user installed Apps and Scoop itself will live in `C:\Users\<user>\`.

Download and install Scoop:

```powershell
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

For more information, please visit Scoop official site at 👉 https://scoop.sh/ 👈

## Install Apps from this bucket 🚗

Run the below commands in PowerShell or Cmd:

### Step 1: Install Aria2 to accelerate downloading 🚅

```powershell
scoop install aria2
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

> to use `scoop-completion`, just to hit `tab` after initial letters of App names

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

|               App                |     Version     |  Installer   | Offical site                                   |
| :------------------------------: | :-------------: | :----------: | ---------------------------------------------- |
|          Activity Watch          |      0.9.2      | Official zip | https://activitywatch.net/                     |
|     Adobe Acrobat Reader DC      |  19.021.20061   | Official exe | https://acrobat.adobe.com/                     |
|           BaiduNetdisk           |     6.8.9.1     | Nightly exe  | https://pan.baidu.com/                         |
|          CopyTranslator          |      9.0.1      | Portable zip | https://copytranslator.github.io/              |
|            Cyberduck             |   7.2.5.32097   | Official msi | https://cyberduck.io/                          |
|             GeoGebra             |     6.0.573     | Portable zip | https://www.geogebra.org/                      |
|               Kite               |  1.2020.327.0   | Official exe | https://kite.com/                              |
|             Lingoes              |      2.9.2      | Portable zip | http://www.lingoes.cn/                         |
|               LyX                |      2.3.4      | Official exe | https://www.lyx.org/                           |
|      Mathpix Snipping Tool       |   02.01.0021    | Official exe | https://mathpix.com/                           |
|         Mendeley Desktop         |     1.19.4      | Official exe | https://www.mendeley.com/                      |
|           NeteaseMusic           |  2.7.1.198242   | Official exe | https://music.163.com/                         |
|             NetLogo              |      6.1.1      | Official msi | https://ccl.northwestern.edu/netlogo/          |
|         Office Tool Plus         |     7.5.0.3     | Official exe | https://github.com/YerongAI/Office-Tool        |
|             Orange3              |     3.24.1      | Official exe | https://orange.biolab.si/                      |
|             Picosmos             |     2.6.0.0     | Official exe | http://www.picosmos.net/                       |
|             SciDAVis             |      1.26       | Official msi | http://scidavis.sourceforge.net                |
|              uTools              |   0.8.9-beta    | Official exe | https://u.tools/                               |
| VirtualBox [with Extension Pack] |      6.1.4      | Official exe | https://www.virtualbox.org/                    |
|      VMware Workstation Pro      | 15.5.2-15785246 | Official exe | https://www.vmware.com/                        |
|              WeChat              |  2.7.1.85.beta  | Official exe | https://weixin.qq.com/                         |
|               Weka               |      3.8.4      | Official exe | https://www.cs.waikato.ac.nz/ml/weka/          |
|            WPSOffice             |   11.1.0.9564   | Official exe | https://pc.wps.cn/                             |
|         scoop-completion         |      0.2.2      |   CND zip    | https://github.com/Moeologist/scoop-completion |
|           scoop-viewer           |      0.8.1      |   CND zip    | https://github.com/prezesp/scoop-viewer        |
|             You-Get              |    0.4.1403     |   CND zip    | https://github.com/soimort/you-get             |
|     i4tools [Un-Silenced...]     |     7.98.12     | Official exe | https://www.i4.cn/                             |
|     SciLab [Un-Silenced...]      |      6.0.2      | Official exe | https://www.scilab.org/                        |
|      LabPlot [Debugging...]      |      2.7.0      | Official exe | https://labplot.kde.org/                       |
|        QQ [Debugging...]         |      9.2.3      | Official exe | https://im.qq.com/pcqq/                        |

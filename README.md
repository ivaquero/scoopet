# To Start 🏃

## Install Scoop 🚴

Run the below commands in PowerShell (Administrator needed)

``` powershell
set-executionpolicy remotesigned -scope currentuser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

For more information, please visit Scoop official site at 👉 https://scoop.sh/ 👈

## Install apps from this bucket 🚗

Run the below commands in PowerShell or Cmd:

### Step 1: Install git first 🎫

```powershell
scoop install git
```

You can also download git manually at https://git-scm.com/download/win

### Step 2: Add this wonderful bucket, and update, mo-mo-da~ 💋 🚅

```powershell
scoop bucket add scoopet https://github.com/integzz/scoopet
scoop update
```

###  Step 3: Install apps ✈️

- For common installation

``` powershell
scoop install <app_name>
```

- For specific installation

```powershell
scoop install scoopet/<app_name>
```

#### Recommendation: Add the bucket extra 💯

``` powershell
scoop bucket add extra
scoop update
```

#### For usage of Scoop 📖

```powershell
scoop help
```

## Summary ⭐️

|               App                |   Version    |  Installer   | Offical site               |
| :------------------------------: | :----------: | :----------: | -------------------------- |
|     BaiduNetdisk  (百度网盘)     |   6.8.9.1    | Nightly exe  | https://pan.baidu.com      |
|            Cyberduck             | 7.2.5.32097  | Official msi | https://cyberduck.io       |
|             GeoGebra             |  6.0.564.0   | Portable zip | https://www.geogebra.org   |
|       Lingoes (灵格斯词霸)       |    2.9.2     | Portable zip | http://www.lingoes.cn      |
|      Mathpix Snipping Tool       |  02.01.0021  | Official exe | https://mathpix.com        |
|         Mendeley Desktop         |    1.19.5    | Official exe | https://www.mendeley.com   |
|    NeteaseMusic  (网易云音乐)    | 2.7.1.198242 | Official exe | https://music.163.com      |
|                QQ                | 9.1.6.25786  | Nightly exe  | https://im.qq.com/pcqq     |
|              uTools              |  0.8.9-beta  | Official exe | https://u.tools            |
| VirtualBox [Plus Extension Pack] |    6.0.16    | Official exe | https://www.virtualbox.org |
|          WeChat  (微信)          |  2.8.0.111   | Nightly exe  | https://weixin.qq.com      |

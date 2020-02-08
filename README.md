To Start
--------

**Install Scoop**

Run below command in PowerShell (Administrator needed)

``` powershell
set-executionpolicy remotesigned -scope currentuser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

> For more information, please visit Scoop official site at https://scoop.sh/

**Install the apps from this bucket**

Run below command in PowerShell to add the bucket:

``` powershell
# To add bucket, you need to install git first
## You can also download git manually at https://git-scm.com/download/win
scoop install git
# Add this wonderful bucket, mo-mo-da~
scoop bucket add scoopet https://github.com/integzz/scoopet
scoop update
# Recommend also add the bucket extra
scoop bucket add extra
scoop update
```

Install apps from this bucket with below command:

``` powershell
# For common installation
scoop install <app_name>
# For specific installation
scoop install scoopet/<app_name>
```


**Summary**


|               App                |   Version    |   Edition    |
| :------------------------------: | :----------: | :----------: |
|     BaiduNetdisk  (百度网盘)     |   6.8.9.1    |   Nightly    |
|            Cyberduck             | 7.2.5.32097  | Official msi |
|             GeoGebra             |  6.0.564.0   |   Portable   |
|      Lingoes (灵格斯翻译家)      |    2.9.2     |   Portable   |
|      Mathpix Snipping Tool       |  02.01.0021  | Official exe |
|         Mendeley Desktop         |    1.19.5    | Official exe |
|    NeteaseMusic  (网易云音乐)    | 2.7.1.198242 | Official exe |
|                QQ                | 9.1.6.25786  |   Nightly    |
|              uTools              |  0.8.9-beta  | Official exe |
| VirtualBox [Plus Extension Pack] |    6.0.16    | Official exe |
|          WeChat  (微信)          |  2.8.0.111   |   Nightly    |
|            WPS Office            | 11.1.0.9339  |   CDN exe    |

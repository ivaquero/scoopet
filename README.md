To Start
--------

**Install Scoop**

``` powershell
set-executionpolicy remotesigned -scope currentuser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```

**Install the apps from this bucket**

Run below command in PowerShell to add the bucket:

``` powershell
scoop bucket add scoopet https://github.com/integzz/scoopet
scoop update
```

Install apps from this bucket with below command:

``` powershell
scoop install scoopet/<app_name>
```


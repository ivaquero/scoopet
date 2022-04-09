if (-not ($env:SCOOP_HOME)) { $env:SCOOP_HOME = scoop prefix scoop | Resolve-Path }

. "$env:SCOOP_HOME\test\Import-Bucket-Tests.ps1"

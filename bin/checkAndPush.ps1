<#
.SYNOPSIS
    Update manifest, commit and push.
.DESCRIPTION
    Use as vscode task:
        1. Open manifest in editor
        1. Press CTRL+SHIFT+B or CTRL+F9 (IntelliJ)
        1. Be surprised
.PARAMETER Manifest
    Full Path to manifest. (vscode ${file})
.PARAMETER Force
    Force parameter will be passed to checkver.
.PARAMETER Hashes
    checkhashes.ps1 script will be executed instead of checkver.ps1
#>
param(
    [Alias('App')]
    [String[]] $Manifest,
    [Alias('ForceUpdate')]
    [Switch] $Force,
    [Switch] $Hashes
)

begin {
    . "$PSScriptRoot\Helpers.ps1"

    if ($Force) { $arg = '-ForceUpdate' } else { $arg = '-Update' }
}

process {
    foreach ($man in $Manifest) {
        # TODO: Yaml
        # if (-not ($man.EndsWith('.yml'))) {
        # 	$man += '.yml'
        # }
        if (-not ($man.EndsWith('.json'))) {
            $man += '.json'
        }
        $man = Resolve-Path $man
        $folder = Split-Path $man -Parent
        $file = Split-Path $man -Leaf
        $noExt = ($file -split '\.')[0]
        $cmd = 'checkver'

        if ($Force) { scoop cache rm $noExt }
        if ($Hashes) { $cmd = 'checkhashes' }

        Invoke-Expression -Command "$PSScriptRoot\$cmd.ps1 '$noExt' '$folder' $arg"

        $updated = @(git status -s)

        if (($updated -match "$noExt").Count -gt 0) {
            # TODO: Yaml
            # $manifest = Get-Content $man -Raw -Encoding UTF8 | ConvertFrom-Yaml -Ordered
            [psobject] $manifest = Get-Content $man -Raw -Encoding UTF8 | ConvertFrom-Json
            $message = "$noExt`: Bumped to $($manifest.version)"

            if ($Hashes) { $message = "${noExt}: Fixed hashes" }

            Write-Host 'Commiting' -ForegroundColor Green
            git commit --message $message --only "*$file"
            $exit = $LASTEXITCODE

            if ($exit -gt 0) {
                Write-Host 'Pre-commit hook failed.' -ForegroundColor Red
                exit $exit
            }

            Write-Host 'Pushing' -ForegroundColor Green
            git push

            Write-Host 'DONE' -ForegroundColor Yellow
        } else {
            Write-Host 'No Changes' -ForegroundColor Yellow
        }
    }
}

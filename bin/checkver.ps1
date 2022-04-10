<#
.SYNOPSIS
    Check version of given manifests.
.DESCRIPTION
    Check version of given manifests (If no manifest is present, all manifests in root of repo will be checked).
    -s Parameter is set to true by default. (use -ns to show all)
    Few control parameters could be used.
    -u - Update given manifests
    -f - Force update given manifests
.PARAMETER Manifest
    Manifest to check.
    It could be List of manifests, specific manifest or string with placeholder.
.PARAMETER Dir
    Where to search for manifest.
    Default to bucket folder.
.PARAMETER Recurse
    Manifests in all subdirectories will be checked. (except .vscode and bin)
.PARAMETER Rest
    -s - Skip manifest with latest version
    -u - Update given manifests
    -f - Force update given manifests
        Usefull for hash updates
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1
    Check all manifests in root.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 MANIFEST
    Check manifest with name MANIFEST.json in root.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 -manifest MANIFEST
    Check manifest with name MANIFEST.json in root.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 -dir TODO -manifest MANIFEST
    Check manifest with name MANIFEST.json in TODO directory.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 MANIFEST TODO
    Check manifest with name MANIFEST.json in directory TODO.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 -dir TODO
    Check all manifests in directory TODO.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 MAN*
    Check all manifests starting with MAN in root.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 Manifest1, Manifest2, Manifest3
    Check all manifests (Manifest 1 to 3) in root.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 MANIFEST -u
    Check manifest with name MANIFEST.json in root and update if there is new version.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkver.ps1 MANIFEST -f
    Check manifest with name MANIFEST.json in root and update even when there is no new version.
#>
param(
    [Parameter(ValueFromPipeline = $true)]
    [Alias('App')]
    [String[]] $Manifest = '*',
    [ValidateScript( { if ( Test-Path $_ -Type Container) { $true } else { $false } })]
    [String] $Dir = "$PSScriptRoot\..\bucket",
    [Switch] $Recurse,
    [Parameter(ValueFromRemainingArguments = $true)]
    [String[]] $Rest = @()
)

begin {
    . "$PSScriptRoot\Helpers.ps1"

    if (-not $env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
    $Dir = Resolve-Path $Dir
    $Script = "$env:SCOOP_HOME\bin\checkver.ps1"
    $Rest = $Rest | Select-Object -Unique # Remove duplicated switches
}

process {
    if ($Recurse) {
        Get-RecursiveFolder | ForEach-Object { Invoke-Expression -Command "$Script -Dir ""$_"" $Rest" }
    }
    else {
        foreach ($man in $Manifest) { Invoke-Expression -Command "$Script -App ""$man"" -Dir ""$Dir"" $Rest" }
    }
}

end { Write-Host 'DONE' -ForegroundColor Yellow }

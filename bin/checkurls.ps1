<#
.SYNOPSIS
    Check if all urls inside manifest are valid.
.PARAMETER Manifest
    Manifest to check.
    Wildcard * is supported.
.PARAMETER Dir
    Location where to search manifests.
    Default to bucket folder.
.PARAMETER Timeout
    How many seconds to wait until mark URL as invalid.
.PARAMETER Rest
    -s - Skip manifests will all URLs valid.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkurls
    Check urls for all manifests in root of bucket.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkurls cosi
    Check urls for cosi.json manifest in root of bucket.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkurls cosi TODO
    Check urls for cosi.json manifest in TODO directory.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkurls cosi TODO 25
    Check urls for cosi.json manifest in TODO directory with 25 timeout.
.EXAMPLE
    PS BUCKETROOT > .\bin\checkurls -dir TODO
    Check urls for all manifests in TODO directory.
#>
param(
    [Parameter(ValueFromPipeline = $true)]
    [Alias('App')]
    [String[]] $Manifest = '*',
    [ValidateScript( { if ( Test-Path $_ -Type Container) { $true } else { $false } })]
    [String] $Dir = "$PSScriptRoot\..\bucket",
    [Int] $Timeout = 5,
    [Switch] $Recurse,
    [Parameter(ValueFromRemainingArguments = $true)]
    [String[]] $Rest = @()
)

begin {
    if (-not $env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
    $Dir = Resolve-Path $Dir
    $Script = "$env:SCOOP_HOME\bin\checkurls.ps1"
    $Rest = ($Rest | Select-Object -Unique) -join ' '
}

process {
    if ($Recurse) {
        Get-RecursiveFolder | ForEach-Object { Invoke-Expression -Command "$Script -Dir ""$_"" -Timeout $Timeout $Rest" }
    }
    else {
        foreach ($man in $Manifest) { Invoke-Expression -Command "$Script -App ""$man"" -Dir ""$Dir"" -Timeout $Timeout $Rest" }
    }
}

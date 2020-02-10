<#
.SYNOPSIS
    Check hashes of all URLs inside manifest.
.DESCRIPTION
    Check hashes of all URLs inside manifest.
    Script will download every URL and then calculate hash of them.
.PARAMETER Manifest
    Specify the name of manifest to be checked.
    Placeholders are supported.
.PARAMETER Dir
    Specify the directory with manifests.
    Default to bucket folder.
.PARAMETER Rest
    -u - Update hashes if there are mismatched ones.
    -f - Update hashes always (even without mismatch).
    -k - Use cache.
.EXAMPLE
    PS BUCKETDIR> .\bin\checkhashes.ps1
    Check URLs of all manifests.
.EXAMPLE
    PS BUCKETDIR> .\bin\checkhashes.ps1 MAN
    Check URLs of manifests MAN.json inside bucket root.
.EXAMPLE
    PS BUCKETDIR> .\bin\checkhashes.ps1 MAN TODO
    Check URLs of manifests MAN.json inside folder ./BUCKETROOT/TODO.
.EXAMPLE
    PS BUCKETDIR> .\bin\checkhashes.ps1 MAN -u
    Check URLs of manifests MAN and update if there are some mismatches.
.EXAMPLE
    PS BUCKETDIR> .\bin\checkhashes.ps1 MAN -f
    Check URLs of manifests MAN and update even if every hash is correct.
.EXAMPLE
    PS BUCKETDIR> .\bin\checkhashes.ps1 MAN -k
    Check URLs of manifests MAN and keep it's downloaded files.
#>
param(
    [Parameter(ValueFromPipeline = $true)]
    [Alias('App', 'Name')]
    [String[]] $Manifest = '*',
    [ValidateScript( { if ( Test-Path $_ -Type Container) { $true } else { $false } })]
    [String] $Dir = "$PSScriptRoot\..\bucket",
    [Switch] $Recurse,
    [Parameter(ValueFromRemainingArguments)]
    [String[]] $Rest
)


begin {
    . "$PSScriptRoot\Helpers.ps1"

    if (-not $env:SCOOP_HOME) {
        if (-not (Get-Command 'scoop' -ErrorAction SilentlyContinue)) { throw 'Scoop installation or SCOOP_HOME environment is required' }
        $env:SCOOP_HOME = scoop prefix scoop | Resolve-Path
    }
    $Dir = Resolve-Path $Dir
    $Script = "$env:SCOOP_HOME\bin\checkhashes.ps1"
    $Rest = ($Rest | Select-Object -Unique) -join ' '
}

process {
    if ($Recurse) {
        Get-RecursiveFolder | ForEach-Object { Invoke-Expression -Command "$Script -Dir ""$_"" $Rest" }
    } else {
        foreach ($man in $Manifest) { Invoke-Expression -Command "$Script -App ""$man"" -Dir ""$Dir"" $Rest" }
    }
}

end { Write-Host 'DONE' -ForegroundColor Yellow }

<#
.SYNOPSIS
    Updates manifests and pushes them or creates pull-requests.
.DESCRIPTION
    Updates manifests and pushes them to directly the master branch or creates pull-requests for upstream.
.PARAMETER Manifest
    Specify manifest to be updated.
.PARAMETER Dir
    Specify directory with manifests.
.PARAMETER Upstream
    Specify upstream repository with target branch.
.PARAMETER Push
    Specify if updates should be directly pushed to 'origin master'.
.PARAMETER Request
    Specify if pull-requests should be created on 'upstream master' for each manifest.
.PARAMETER SpecialSnowflakes
    Specify list of manifests, which should be force updated.
#>
param(
    [Alias('App', 'Name')]
    [String] $Manifest = '*',
    [ValidateScript( { if ( Test-Path $_ -Type Container) { $true } else { $false } })]
    [String] $Dir = "$PSScriptRoot\..\bucket",
    [ValidatePattern('^(.+)\/(.+):(.+)$')]
    [String] $Upstream = $((git config --get remote.origin.url) -replace '^.+[:/](?<user>.*)\/(?<repo>.*)(\.git)?$', '${user}/${repo}:master'),
    [Switch] $Push,
    [Switch] $Request,
    [string[]] $SpecialSnowflakes
)

begin {
    if (-not $env:SCOOP_HOME) {
        if (-not (Get-Command 'scoop' -ErrorAction SilentlyContinue)) { throw 'Scoop installation or SCOOP_HOME environment is required' }
        $env:SCOOP_HOME = scoop prefix scoop | Resolve-Path
    }
    $Params = @{
        App               = $Manifest
        Dir               = Resolve-Path $Dir
        Upstream          = $Upstream
        Push              = $Push
        Request           = $Request
        SpecialSnowflakes = $SpecialSnowflakes
        SkipUpdated       = $true
    }
}

process { & "$env:SCOOP_HOME\bin\auto-pr.ps1" @Params }

end { Write-Host 'DONE' -ForegroundColor Yellow }

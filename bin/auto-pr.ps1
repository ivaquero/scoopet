<#
.SYNOPSIS
    Updates manifests and pushes them or creates pull-requests.
.DESCRIPTION
    Updates manifests and pushes them to directly the master branch or creates pull-requests for upstream.
.PARAMETER Manifest
    Manifest to be updated.
.PARAMETER Dir
    Where to search for manifests.
.PARAMETER Upstream
    Upstream repository with target branch.
.PARAMETER Push
    Push updates directly to 'origin master'.
.PARAMETER Request
    Create pull-requests on 'upstream master' for each update.
.PARAMETER SpecialSnowflakes
    List of manifests, which should be updated allways. (Force updated)
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
    if (-not $env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
    $Dir = Resolve-Path $Dir
    $Params = @{
        App               = $Manifest
        Dir               = $Dir
        Upstream          = $Upstream
        Push              = $Push
        Request           = $Request
        SpecialSnowflakes = $SpecialSnowflakes
        SkipUpdated       = $true
    }
}

process { . "$env:SCOOP_HOME\bin\auto-pr.ps1" @Params }

end { Write-Host 'DONE' -ForegroundColor Yellow }
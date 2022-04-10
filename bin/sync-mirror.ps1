<#
.SYNOPSIS
    Sync repository to mirror git server.
.DESCRIPTION
    Push updates to mirror git server.
#>

$mirror = "https://github.com/integzz/scoopet.git"
Invoke-Expression -command "git push $mirror"

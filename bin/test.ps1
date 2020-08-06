<#
.SYNOPSIS
    Execute Pester tests in repository root directory.
#>

$result = Invoke-Pester "$PSScriptRoot\.." -PassThru

exit $result.FailedCount

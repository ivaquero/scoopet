#Requires -Version 5.1
#Requires -Modules @{ ModuleName = 'Pester'; ModuleVersion = '5.7.1' }

if (!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$result = Invoke-Pester "$PSScriptRoot\..\test" -PassThru
exit $result.FailedCount

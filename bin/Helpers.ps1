$ROOT_DIRECTORY = Resolve-Path "$PSScriptRoot\.."
$BUCKET_DIRECTORY = Resolve-Path "$ROOT_DIRECTORY\bucket"

function Get-RecursiveFolder {
    $folders = @($ROOT_DIRECTORY)
    $folders += Get-ChildItem $ROOT_DIRECTORY -Directory | Where-Object { $_ -inotmatch '.vscode|bin' }

    return Resolve-Path $folders
}

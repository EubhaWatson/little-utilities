Get-ChildItem -Recurse -Filter *.zip | ForEach-Object {
    $destination = "$($_.DirectoryName)\$($_.BaseName)"
    Expand-Archive -Path $_.FullName -DestinationPath $destination -Force
}
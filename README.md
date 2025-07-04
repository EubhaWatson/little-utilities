# little-utilities
This repository is for storing helpful little personal scripts for automating common tasks. 

---

## Unzipper (Powershell)

This powershell script unzips every .zip file in a given directory and all its subdirectories using Windows Terminal (PowerShell).

```powershell
Get-ChildItem -Path "C:\Path\To\Directory" -Recurse -Filter *.zip | ForEach-Object {
    $destination = "$($_.DirectoryName)\$($_.BaseName)"
    Expand-Archive -Path $_.FullName -DestinationPath $destination -Force

```

Remember to run the script in the parent directory of all of your .zip files, not `$HOME`.

`Get-ChildItem -Recurse -Filter *.zip` finds all .zip files in the directory and subdirectories.

`ForEach-Object` loops through each .zip file, then `Expand-Archive` extracts the contents.

The destination folder is named after the zip file (without .zip) and placed in the same folder as the zip.
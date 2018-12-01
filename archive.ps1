New-Item -Name 'drawable-mdpi' -ItemType 'directory'
New-Item -Name 'drawable-xhdpi' -ItemType 'directory'
New-Item -Name 'drawable-xxhdpi' -ItemType 'directory'

Get-ChildItem *@1x.png | Move-Item -Destination ./drawable-mdpi
Get-ChildItem *@2x.png | Move-Item -Destination ./drawable-xhdpi
Get-ChildItem *@3x.png | Move-Item -Destination ./drawable-xxhdpi

Set-Location ./drawable-mdpi
Get-ChildItem *@1x.png | Rename-Item -NewName { $_.name -replace '@1x.png','.png' }
cd..

Set-Location ./drawable-xhdpi
Get-ChildItem *@2x.png | Rename-Item -NewName { $_.name -replace '@2x.png','.png' }
cd..

Set-Location ./drawable-xxhdpi
Get-ChildItem *@3x.png | Rename-Item -NewName { $_.name -replace '@3x.png','.png' }
cd..

Pause

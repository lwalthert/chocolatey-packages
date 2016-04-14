
$ErrorActionPreference = 'Stop';
$packageName = 'usbit'
$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))
$shortcut_to_remove = 'USB Image Tool.exe.lnk'

Remove-Item "$desktop\$shortcut_to_remove" -ErrorAction Continue
Uninstall-ChocolateyZipPackage $packageName
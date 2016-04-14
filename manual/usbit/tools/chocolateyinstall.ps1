
$ErrorActionPreference = 'Stop';

$packageName= 'usbit'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$target     = Join-Path $toolsDir 'USB Image Tool.exe'
$url        = 'http://www.alexpage.de/download/usbit/usbit.zip'

Install-ChocolateyZipPackage $packageName $url $toolsDir
Install-ChocolateyDesktopLink -TargetFilePath $target

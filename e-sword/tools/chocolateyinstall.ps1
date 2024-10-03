$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://e-sword.net/files/e-sword_1410_setup.exe' # download url, HTTPS preferred

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'e-Sword'
  checksum      = '75765957BA9EA80C11DAD2DB4CB685D5'
  checksumType  = 'md5'
  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-package

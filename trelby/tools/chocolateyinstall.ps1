$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Setup-Trelby-2.2.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file         = $fileLocation

  softwareName  = 'Trelby*'
  checksum      = '1D8A55160B2814D76672D9FD45A07D00236CEC242550B068B2BB558B48E217B'
  checksumType  = 'sha256'
  silentArgs   = '/S'           # NSIS
}

Install-ChocolateyInstallPackage @packageArgs
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation   = Join-Path $toolsDir 'TripleA_1.9.0.0.13066_windows-32bit.exe'
$fileLocation64 = Join-Path $toolsDir 'TripleA_1.9.0.0.13066_windows-64bit.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file          = $fileLocation
  file64        = $fileLocation64
  softwareName  = 'TripleA*'
  checksum      = '98698a6fb02dca79ce6e1e2427d7e847'
  checksumType  = 'md5'
  checksum64    = 'ed5aaf4a012adeb03aeb282a222880b7'
  checksumType64= 'md5'
  silentArgs   = '-q'           # Install4j
}

Install-ChocolateyInstallPackage @packageArgs

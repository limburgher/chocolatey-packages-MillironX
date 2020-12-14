$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation   = Join-Path $toolsDir 'TripleA_2.5.22294_windows-32bit.exe'
$fileLocation64 = Join-Path $toolsDir 'TripleA_2.5.22294_windows-64bit.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  file          = $fileLocation
  file64        = $fileLocation64
  softwareName  = 'TripleA*'
  checksum      = '1b8c3d87f6c16b0c1b4bdbe415972b9be4846a44f0dc89d46fab005dfd02bedd'
  checksumType  = 'sha256'
  checksum64    = '0eddc4e13bff3a1bfcad6a1d5f2429557552076d0c70f5fcd1aaf8f1cf889dea'
  checksumType64= 'sha256'
  silentArgs   = '-q'           # Install4j
}

Install-ChocolateyInstallPackage @packageArgs

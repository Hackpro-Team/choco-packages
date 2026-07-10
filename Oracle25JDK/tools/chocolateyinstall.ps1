$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/25/latest/jdk-25_windows-x64_bin.exe'
  Checksum64     = '3a84de823969ab36c8ac1d03d98b0e4315ac49fbed8b66862562af9ac0a8c63b'
  ChecksumType64 = 'sha256'
  fileType       = 'exe'
  silentArgs     = '/s'
}

Install-ChocolateyPackage @packageArgs

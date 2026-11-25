$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/21/archive/jdk-21.0.12.1_windows-x64_bin.exe'
  Checksum64     = '07f166595579af2702f90a717d99f18ffa53e00e62c62e359f5d48d5a899000d'
  ChecksumType64 = 'sha256'
  fileType       = 'exe'
  silentArgs     = '/s'
}

Install-ChocolateyPackage @packageArgs

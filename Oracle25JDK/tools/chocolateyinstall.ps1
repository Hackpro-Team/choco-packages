$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/25/latest/jdk-25_windows-x64_bin.msi'
  Checksum64     = 'e71f9591849dd1fe08cf376480eb6560115190fa9b8e26c38ec7157385fe7897'
  ChecksumType64 = 'sha256'
  fileType       = 'msi'
  silentArgs     = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs

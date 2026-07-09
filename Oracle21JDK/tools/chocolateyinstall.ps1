$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  Url64bit      = 'https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.msi'
  Checksum64    = 'be8b61113b0961b7cd0f78fb09734897f31f1598d3dca472e21c4872693de0c1'
  ChecksumType64 = 'sha256'
  fileType      = 'msi'
  silentArgs    = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs

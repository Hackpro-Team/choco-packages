$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/26/latest/jdk-26_windows-x64_bin.msi'
  Checksum64     = 'b1f1dcfccb6a2ad64627aeb26b84dffa3bbeaae1509367858917b321f8c8ae07'
  ChecksumType64 = 'sha256'
  fileType       = 'msi'
  silentArgs     = "INSTALLLEVEL=3 /quiet"
}

Install-ChocolateyPackage @packageArgs

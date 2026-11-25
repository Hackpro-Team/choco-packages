$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/25/archive/jdk-25.0.5.1_windows-x64_bin.exe'
  Checksum64     = '69700357d0576b0d822f61b87228edb7dca650d0e6c1a0d02e3bd067bf93645e'
  ChecksumType64 = 'sha256'
  fileType       = 'exe'
  silentArgs     = '/s'
}

Install-ChocolateyPackage @packageArgs

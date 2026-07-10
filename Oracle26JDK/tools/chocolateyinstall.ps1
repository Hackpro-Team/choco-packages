$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/26/latest/jdk-26_windows-x64_bin.exe'
  Checksum64     = '64e99c9fe382627d3b4b40ca737dfc24c4571af8f07db561c686b741f1eeccde'
  ChecksumType64 = 'sha256'
  fileType       = 'exe'
  silentArgs     = '/s'
}

Install-ChocolateyPackage @packageArgs

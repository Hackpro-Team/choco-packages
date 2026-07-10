$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/21/latest/jdk-21_windows-x64_bin.exe'
  Checksum64     = '2d5a1fd908636d1659945885f8206bcfb72ab907055ed8bb90e18739e8ed73b8'
  ChecksumType64 = 'sha256'
  fileType       = 'exe'
  silentArgs     = '/s'
}

Install-ChocolateyPackage @packageArgs

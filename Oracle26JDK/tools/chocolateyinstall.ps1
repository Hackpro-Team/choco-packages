$packageArgs = @{
  PackageName    = $env:ChocolateyPackageName
  Url64bit       = 'https://download.oracle.com/java/26/archive/jdk-26.0.2.1_windows-x64_bin.exe'
  Checksum64     = '401a4f6fb9a557d7476d31a46277a568457b3e35d388bb9b0eec19ba1adc23bb'
  ChecksumType64 = 'sha256'
  fileType       = 'exe'
  silentArgs     = '/s'
}

Install-ChocolateyPackage @packageArgs

$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.13/vagrant-vmware-utility_1.0.13_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.13/vagrant-vmware-utility_1.0.13_x86_64.msi'
  checksum = 'c9ca8a0e5556f5b5b1fe00584f4e6a1b7a3a7ddd72e46d4d740c46d2e32306c7'
  checksum64 = 'c9ca8a0e5556f5b5b1fe00584f4e6a1b7a3a7ddd72e46d4d740c46d2e32306c7'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


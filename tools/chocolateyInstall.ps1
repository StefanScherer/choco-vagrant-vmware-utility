$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.5/vagrant-vmware-utility_1.0.5_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.5/vagrant-vmware-utility_1.0.5_x86_64.msi'
  checksum = '62c204e5b2021a5c4a16834363f1faf9b2fc276fcb6cd0f127b77126d6d04a5c'
  checksum64 = '62c204e5b2021a5c4a16834363f1faf9b2fc276fcb6cd0f127b77126d6d04a5c'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


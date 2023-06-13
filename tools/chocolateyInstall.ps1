$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.22/vagrant-vmware-utility_1.0.22_windows_amd64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.22/vagrant-vmware-utility_1.0.22_windows_amd64.msi'
  checksum = '225c19b5c9c682532c8fa9e2c68a3921654c2e0acb5fcf364226b80e25a2a5e7'
  checksum64 = '225c19b5c9c682532c8fa9e2c68a3921654c2e0acb5fcf364226b80e25a2a5e7'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


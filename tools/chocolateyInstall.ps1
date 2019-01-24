$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.7/vagrant-vmware-utility_1.0.7_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.7/vagrant-vmware-utility_1.0.7_x86_64.msi'
  checksum = '7693730ad46fce02bc336e19c9b2b56e92384648bef1a92d8d79d7148a568f03'
  checksum64 = '7693730ad46fce02bc336e19c9b2b56e92384648bef1a92d8d79d7148a568f03'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.17/vagrant-vmware-utility_1.0.17_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.17/vagrant-vmware-utility_1.0.17_x86_64.msi'
  checksum = '768fe0b1dee1a2ff3166e4b05d44ba895594383ac8e193372047d1a20cfd56ab'
  checksum64 = '768fe0b1dee1a2ff3166e4b05d44ba895594383ac8e193372047d1a20cfd56ab'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


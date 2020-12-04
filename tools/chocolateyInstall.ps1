$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.16/vagrant-vmware-utility_1.0.16_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.16/vagrant-vmware-utility_1.0.16_x86_64.msi'
  checksum = '2f324b3782278994e540ab140a2a25ab3b8b80879fca061f714cc2b594650008'
  checksum64 = '2f324b3782278994e540ab140a2a25ab3b8b80879fca061f714cc2b594650008'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


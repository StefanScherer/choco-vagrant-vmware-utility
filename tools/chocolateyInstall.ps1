$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.3/vagrant-vmware-utility_1.0.3_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.3/vagrant-vmware-utility_1.0.3_x86_64.msi'
  checksum = '280aa2aee1c19d4c5785f80def84d1fcfc592130349ab5a724422d617081618f'
  checksum64 = '280aa2aee1c19d4c5785f80def84d1fcfc592130349ab5a724422d617081618f'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


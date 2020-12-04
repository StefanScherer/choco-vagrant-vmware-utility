$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.15/vagrant-vmware-utility_1.0.15_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.15/vagrant-vmware-utility_1.0.15_x86_64.msi'
  checksum = 'b0e7a3644ee1651b3f2fea143a419c51f5aec828b50b946a3671ecd946631546'
  checksum64 = 'b0e7a3644ee1651b3f2fea143a419c51f5aec828b50b946a3671ecd946631546'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


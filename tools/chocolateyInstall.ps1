$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.14/vagrant-vmware-utility_1.0.14_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.14/vagrant-vmware-utility_1.0.14_x86_64.msi'
  checksum = 'd39f288efdc21a8f57d260aac045b144959c129f99e2044c32c478dba4d8cd4c'
  checksum64 = 'd39f288efdc21a8f57d260aac045b144959c129f99e2044c32c478dba4d8cd4c'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


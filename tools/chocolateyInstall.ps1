$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.1/vagrant-vmware-utility_1.0.1_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.1/vagrant-vmware-utility_1.0.1_x86_64.msi'
  checksum = '31b71b0be922109f471cb028fc31e479285ac3735c7ee39805ec20cbab407942'
  checksum64 = '31b71b0be922109f471cb028fc31e479285ac3735c7ee39805ec20cbab407942'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


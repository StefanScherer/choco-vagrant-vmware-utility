$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.4/vagrant-vmware-utility_1.0.4_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.4/vagrant-vmware-utility_1.0.4_x86_64.msi'
  checksum = '1c8e8e6105ea89266c2a3afa3922d22aae1242d2f09f44d8f161c674539cdda8'
  checksum64 = '1c8e8e6105ea89266c2a3afa3922d22aae1242d2f09f44d8f161c674539cdda8'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


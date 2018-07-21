$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.2/vagrant-vmware-utility_1.0.2_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.2/vagrant-vmware-utility_1.0.2_x86_64.msi'
  checksum = 'cc0283e6bdec3c734567f8d440a232c3748ab3ebdcf77ccb84b8599de63a7f31'
  checksum64 = 'cc0283e6bdec3c734567f8d440a232c3748ab3ebdcf77ccb84b8599de63a7f31'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName = 'vagrant-vmware-utility'
  fileType = 'msi'
  url = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.0/vagrant-vmware-utility_1.0.0_x86_64.msi'
  url64bit = 'https://releases.hashicorp.com/vagrant-vmware-utility/1.0.0/vagrant-vmware-utility_1.0.0_x86_64.msi'
  checksum = '137c63289a75cd82dc64369aa55c2afdf7fb8676492938ac5156397a255b99c5'
  checksum64 = '137c63289a75cd82dc64369aa55c2afdf7fb8676492938ac5156397a255b99c5'
  checksumType = 'sha256'
  checksumType64 = 'sha256'
  silentArgs = "/qn /norestart"
  validExitCodes = @(0, 3010, 1641)
  softwareName = 'vagrant-vmware-utility'
}
Install-ChocolateyPackage @packageArgs


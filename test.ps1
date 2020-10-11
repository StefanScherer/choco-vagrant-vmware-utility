$ErrorActionPreference = "Stop"

if ($env:APPVEYOR_BUILD_VERSION) {
  # run in CI
  $version = $env:APPVEYOR_BUILD_VERSION -replace('\.[^.\\/]+$')

  # install VMware Workstation first
  choco install -y vmwareworkstation
} else {
  # run manually
  [xml]$spec = Get-Content vagrant-vmware-utility.nuspec
  $version = $spec.package.metadata.version
}

"TEST: Version $version in vagrant-vmware-utility.nuspec file should match"
[xml]$spec = Get-Content vagrant-vmware-utility.nuspec
if ($spec.package.metadata.version.CompareTo($version)) {
  Write-Error "FAIL: Wrong version in nuspec file!"
}

"TEST: Package should contain only install script"
Add-Type -assembly "system.io.compression.filesystem"
$zip = [IO.Compression.ZipFile]::OpenRead("$pwd\vagrant-vmware-utility.$version.nupkg")
# Write-Host $zip.Entries.FullName
Write-Host $zip.Entries.Count
if ($zip.Entries.Count -ne 5) {
  Write-Error "FAIL: Wrong count in nupkg!"
}
$zip.Dispose()

"TEST: Installation of package should work"
. choco install -y vagrant-vmware-utility $options -source . -version $version

if (!(Test-Path C:\HashiCorp\VagrantVMwareUtility\bin\vagrant-vmware-utility.exe)) {
  Write-Error "FAIL: Package directory C:\HashiCorp\VagrantVMwareUtility\bin\vagrant-vmware-utility.exe must exist!"
}

"TEST: Uninstall show remove the binary"
. choco uninstall vagrant-vmware-utility
try {
  $ErrorActionPreference = "SilentlyContinue"
  C:\HashiCorp\VagrantVMwareUtility\bin\vagrant-vmware-utility.exe --version
  $ErrorActionPreference = "Stop"
  Write-Error "FAIL: vagrant-vmware-utility binary still found"
} catch {
  Write-Host "PASS: vagrant-vmware-utility not found"
}

"TEST: Uninstall should not leave files on disk"
if (Test-Path C:\programdata\chocolatey\lib\vagrant-vmware-utility) {
  Write-Error "FAIL: Package directory C:\programdata\chocolatey\lib\vagrant-vmware-utility mustn't exist!"
}
if (Test-Path C:\HashiCorp\VagrantVMwareUtility) {
  Write-Error "FAIL: Package directory C:\HashiCorp\VagrantVMwareUtility mustn't exist!"
}

"TEST: Finished"

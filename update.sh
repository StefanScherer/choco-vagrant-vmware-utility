#!/bin/bash

if [ "$1" = "" ]; then
  echo "Usage: $0 version"
  echo "Update the choco package to a given version"
  echo "Example: $0 1.11.0"
  exit 1
fi

case "${OSTYPE}" in
"darwin"*)
  ;;
"msys")
  ;;
*)
  echo "This version does not support your OS ($OSTYPE)."
  exit 2
  ;;
esac

version=$1

shaurl="https://releases.hashicorp.com/vagrant-vmware-utility/${version}/vagrant-vmware-utility_${version}_SHA256SUMS"
url="https://releases.hashicorp.com/vagrant-vmware-utility/${version}/vagrant-vmware-utility_${version}_x86_64.msi"
checksum=$(curl "${shaurl}" | grep _x86_64.msi | cut -f 1 -d " ")

sed -i.bak "s/<version>.*<\/version>/<version>${version}<\/version>/" vagrant-vmware-utility.nuspec

sed -i.bak "s!url = '.*'!url = '${url}'!" tools/chocolateyInstall.ps1
sed -i.bak "s!url64bit = '.*'!url64bit = '${url}'!" tools/chocolateyInstall.ps1
sed -i.bak "s/checksum = '.*'/checksum = '${checksum}'/" tools/chocolateyInstall.ps1
sed -i.bak "s/checksum64 = '.*'/checksum64 = '${checksum}'/" tools/chocolateyInstall.ps1

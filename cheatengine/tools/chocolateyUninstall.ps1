Uninstall-ChocolateyPackage `
  -PackageName 'cheatengine' `
  -FileType 'EXE' `
  -Silent '/VERYSILENT /NORESTART' `
  -File (Get-UninstallRegistryKey -SoftwareName 'Cheat Engine 7.0.0').UninstallString.Trim('"')

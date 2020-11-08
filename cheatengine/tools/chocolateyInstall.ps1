Install-ChocolateyPackage `
  -PackageName 'cheatengine' `
  -Url 'https://github.com/cheat-engine/cheat-engine/releases/download/7.2/CheatEngine72.exe' `
  -Checksum '3C1EAD7F3D812E2A3CF09C382ECC71212F5C86CE6A2DA7F4C7033925241AD53D' `
  -ChecksumType 'SHA256' `
  -FileType 'EXE' `
  -Silent '/VERYSILENT /NORESTART /NOCANDY'

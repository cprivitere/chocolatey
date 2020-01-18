Install-ChocolateyPackage `
  -PackageName 'cheatengine' `
  -Url 'https://github.com/cheat-engine/cheat-engine/releases/download/7.0/CheatEngine70.exe' `
  -Checksum '316CEFAD212B492CE0A67BBEE42209AA37F454827F8DA3A992E4BC45CC2CFAB6' `
  -ChecksumType 'SHA256' `
  -FileType 'EXE' `
  -Silent '/VERYSILENT /NORESTART /NOCANDY'

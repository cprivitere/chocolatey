Install-ChocolateyPackage `
  -PackageName 'cheatengine' `
  -Url 'https://github.com/cheat-engine/cheat-engine/releases/download/7.4/CheatEngine74.exe' `
  -Checksum '6D0E14D66DA69C163F824F8FA7D87DE3EEA41CDBD48C0973DE296CF6D2D0FED3' `
  -ChecksumType 'SHA256' `
  -FileType 'EXE' `
  -Silent '/VERYSILENT /NORESTART /NOCANDY'

Install-ChocolateyPackage `
  -PackageName 'cheatengine' `
  -Url 'https://github.com/cheat-engine/cheat-engine/releases/download/7.1/CheatEngine71.exe' `
  -Checksum 'DF54B77363500D9795AB43D78A55989200B66974A2EAF90898FA9ACE240659E4' `
  -ChecksumType 'SHA256' `
  -FileType 'EXE' `
  -Silent '/VERYSILENT /NORESTART /NOCANDY'

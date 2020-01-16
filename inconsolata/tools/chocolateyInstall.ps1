$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url1 = 'https://github.com/googlefonts/Inconsolata/raw/v3.000/fonts/ttf/Inconsolata-Regular.ttf'
$url2 = 'https://github.com/googlefonts/Inconsolata/raw/v3.000/fonts/ttf/Inconsolata-Bold.ttf'
$url3 = 'https://github.com/googlefonts/Inconsolata/raw/v3.000/fonts/ttf/Ligconsolata-Bold.ttf'
$url4 = 'https://github.com/googlefonts/Inconsolata/raw/v3.000/fonts/ttf/Ligconsolata-Regular.ttf'

Get-ChocolateyWebFile `
  -PackageName $env:ChocolateyPackageName `
  -FileFullPath $toolsDir\Inconsolata-Regular.ttf `
  -Url $url1 `
  -Checksum '127875D255D4C5973CA57267A43BB9D1C04397E6C7D236984A595B6CDCB12B7C' `
  -ChecksumType SHA256 `

Get-ChocolateyWebFile `
  -PackageName $env:ChocolateyPackageName `
  -FileFullPath $toolsDir\Inconsolata-Bold.ttf `
  -Url $url2 `
  -Checksum '263FAA57F6C00C43A04E77DF7ABD5CB5CD4AAE9F93507002C1217E02641FC7E6' `
  -ChecksumType SHA256 `

Get-ChocolateyWebFile `
  -PackageName $env:ChocolateyPackageName `
  -FileFullPath $toolsDir\Ligconsolata-Regular.ttf `
  -Url $url4 `
  -Checksum 'A7C12B94F893FB45DE37833C76EEC8074538ACF04FF86F3D7A73829B8A6BA889' `
  -ChecksumType SHA256 `

Get-ChocolateyWebFile `
  -PackageName $env:ChocolateyPackageName `
  -FileFullPath $toolsDir\Ligconsolata-Bold.ttf `
  -Url $url3 `
  -Checksum 'EA62F7A7500014A035E8DB7F28AE5FE5EABE8D1390B8396817E1CCBD31C1F46F' `
  -ChecksumType SHA256 `

Install-ChocolateyFont $toolsDir -multiple
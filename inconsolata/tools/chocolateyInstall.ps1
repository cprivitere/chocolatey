$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url1 = 'https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Regular.ttf'
$url2 = 'https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Bold.ttf'

Get-ChocolateyWebFile `
  -PackageName $env:ChocolateyPackageName `
  -FileFullPath $toolsDir\Inconsolata-Regular.ttf `
  -Url $url1 `
  -Checksum '2A53B53D55363C4913A8873D0E1636D6C09D8A3C38570FB166FC71A5123EC8DC' `
  -ChecksumType SHA256 `

Get-ChocolateyWebFile `
  -PackageName $env:ChocolateyPackageName `
  -FileFullPath $toolsDir\Inconsolata-Bold.ttf `
  -Url $url2 `
  -Checksum '76A242626E1C791B6945060D7A61B5B61F6F1C6B364B6C7868A30AF1EF44B623' `
  -ChecksumType SHA256 `

#Remove the old font if it's still kicking around
Uninstall-ChocolateyFont Inconsolata.otf

Install-ChocolateyFont $toolsDir -multiple

#Remove-Item $destination\Inconsolata-Regular.ttf $destination\Inconsolata-Bold.ttf

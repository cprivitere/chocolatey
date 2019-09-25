try
{
    $packageName = 'inconsolata'
    $url1 = 'https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Regular.ttf'
    $url2 = 'https://github.com/google/fonts/raw/master/ofl/inconsolata/Inconsolata-Bold.ttf'

    $destination = Join-Path $Env:Temp $packageName

    Get-ChocolateyWebFile `
      -PackageName $packageName `
      -FileFullPath $destination\Inconsolata-Regular.ttf `
      -Url $url1 `
      -Checksum '2A53B53D55363C4913A8873D0E1636D6C09D8A3C38570FB166FC71A5123EC8DC' `
      -ChecksumType SHA256 `

    Get-ChocolateyWebFile `
      -PackageName $packageName `
      -FileFullPath $destination\Inconsolata-Bold.ttf `
      -Url $url2 `
      -Checksum '76A242626E1C791B6945060D7A61B5B61F6F1C6B364B6C7868A30AF1EF44B623' `
      -ChecksumType SHA256 `

    $shell = New-Object -ComObject Shell.Application
    $fontsFolder = $shell.Namespace(0x14)

    Get-ChildItem $destination -Recurse -Filter *.ttf |
        ForEach-Object { $fontsFolder.CopyHere($_.FullName) }

    Remove-Item $destination -Recurse
}
catch
{
    Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
    throw
}

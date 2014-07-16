$Package = "FocusWriter"
$Version = "1.5.1"

$ToolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$PackagePath = "$((Get-Item $ToolsPath).parent.FullName)"

$PackageParams = @{
  packageName = $Package;
  url = "http://gottcode.org/focuswriter/FocusWriter_$Version.zip";
  unzipLocation = (Join-Path $PackagePath "bin");
}

Try {
  Install-ChocolateyZipPackage @PackageParams
  Write-ChocolateySuccess $Package
} Catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  Throw
}

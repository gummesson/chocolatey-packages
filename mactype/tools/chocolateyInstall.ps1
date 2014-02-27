$Package = "MacType"
$Version = "2013_1231_0"
$PackageParams = @{
  packageName = $Package;
  fileType = "exe";
  silentArgs = "/quiet";
  url = "http://www.mactype.tk/MacTypeInstaller_$Version.exe";
}

Try {
  Install-ChocolateyPackage @PackageParams
  Write-ChocolateySuccess $Package
} Catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  Throw
}

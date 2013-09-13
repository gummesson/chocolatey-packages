$Package = "MacType"
$Version = "2012_1022_0"
$PackageParams = @{
  packageName = $Package;  
  fileType = "exe";
  silentArgs = "/quiet";
  url = "http://mactype.googlecode.com/files/MacTypeInstaller_$Version.exe";
} 

Try {
  Install-ChocolateyPackage @PackageParams
  Write-ChocolateySuccess $Package
} Catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  Throw
}

$Package = "wkhtmltopdf"
$Version = "0.9.9"
$PackageParams = @{
  packageName = $Package;  
  fileType = "exe";
  silentArgs = "/S";
  url = "http://wkhtmltopdf.googlecode.com/files/wkhtmltopdf-$Version-installer.exe";
} 

Try {
  Install-ChocolateyPackage @PackageParams
  Write-ChocolateySuccess $Package
} Catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  Throw
}

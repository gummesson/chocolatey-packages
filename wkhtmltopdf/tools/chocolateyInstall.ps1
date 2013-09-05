$Package = "wkhtmltopdf"
$Version = "0.9.9"
$PackageParams = @{
  packageName = $Package;  
  fileType = "exe";
  silentArgs = "/S";
  url = "http://wkhtmltopdf.googlecode.com/files/wkhtmltopdf-$Version-installer.exe";
} 

try {
  Install-ChocolateyPackage @PackageParams
  Write-ChocolateySuccess $Package
} catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  throw
}

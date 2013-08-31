$Package = "MarkdownPad2"
$PackageParams = @{
  packageName = $Package;  
  fileType = "exe";
  silentArgs = "/quiet";
  url = "http://markdownpad.com/download/markdownpad2-setup.exe";
} 

try {
  Install-ChocolateyPackage @PackageParams
  Write-ChocolateySuccess $Package
} catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  throw
}

$Package = "MarkdownPad2"
$PackageParams = @{
  packageName = $Package;  
  fileType = "exe";
  silentArgs = "/quiet";
  url = "http://markdownpad.com/download/markdownpad2-setup.exe";
} 

Try {
  Install-ChocolateyPackage @PackageParams
  Write-ChocolateySuccess $Package
} Catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  Throw
}

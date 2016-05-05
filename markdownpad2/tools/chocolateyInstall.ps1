$Package = "MarkdownPad2"
$PackageParams = @{
  packageName = $Package;  
  fileType = "exe";
  silentArgs = "/quiet /exenoui";
  url = "http://markdownpad.com/download/markdownpad2-setup.exe";
} 

Install-ChocolateyPackage @PackageParams
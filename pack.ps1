# == Create a Chocolatey package ===============================================

Param([Parameter(Position=0, Mandatory = $true)]
      [ValidateSet(
        "markdownpad2",
        "mactype")]
      [Alias("f")]
      [String]$File)

Function Set-PackageDirectory {
  Set-Location "$File\"
}

Function Create-Package {
  cpack
}

Function Set-PreviousDirectory {
  Set-Location ../  
}

Set-PackageDirectory
Create-Package
Set-PreviousDirectory

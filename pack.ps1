# == Create a Chocolatey package ===============================================
#
#  Usage:
#   .\pack.ps1 [FILE]
#
#  Example:
#   .\pack.ps1 mactype
#
# ==============================================================================

Param(
  [Parameter(Position=0, Mandatory = $true)]
  [ValidateSet(
    "markdownpad2",
    "mactype",
    "markdownwin")]
  [Alias("f")]
  [String]$File
)

Function Set-PackageDirectory {
  Set-Location "$File\"
}

Function Invoke-PackageCreation {
  chocolatey pack
}

Function Set-PreviousDirectory {
  Set-Location ../  
}

Set-PackageDirectory
Invoke-PackageCreation
Set-PreviousDirectory

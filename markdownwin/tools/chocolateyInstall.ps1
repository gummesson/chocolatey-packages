$Package = "MarkdownWin"

Try {
  Write-ChocolateySuccess $Package
} Catch {
  Write-ChocolateyFailure $Package "$($_.Exception.Message)"
  Throw
}

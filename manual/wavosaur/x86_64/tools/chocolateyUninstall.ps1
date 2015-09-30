$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$appDir = "$toolsDir\app"

$menuPrograms = [environment]::GetFolderPath([environment+specialfolder]::Programs)
$shortcutFilePath = "$menuPrograms\Wavosaur.lnk"

Remove-Item $appDir -recurse
If (Test-Path $shortcutFilePath) {
  Remove-Item $shortcutFilePath
}

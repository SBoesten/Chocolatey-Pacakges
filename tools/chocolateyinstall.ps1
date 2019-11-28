$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$fileLocation = Join-Path $toolsDir 'avira_en_free0___maj.exe' 

$packagename = 'avira'

$packageArgs = @{
  packageName   = $packagename
  fileType      = 'EXE' 
  file         = $fileLocation	
  softwareName  = 'avira*'
  validExitCodes= @(0) 		
  silentArgs    = "/S" 				
 

}

Install-ChocolateyInstallPackage @packageArgs

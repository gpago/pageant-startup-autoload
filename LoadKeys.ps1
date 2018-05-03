$exePath = 'Path To Pageant'
$keysPath = 'Path to SSH Keys Folder'
$finalString = ' '

Get-ChildItem $keysPath -Filter *.ppk |

ForEach-Object { 
	
	$fileName = Split-Path $_.FullName -leaf
	$finalString += ' '
	$finalString += $fileName;
	
    Write-Host $finalString
}

Set-Location -Path $keysPath

Start-Process -FilePath $exePath $finalString -WorkingDirectory $keysPath
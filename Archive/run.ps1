$name = Read-Host 'What is your username?'

$name

Rename-Item -Path $Name -NewName 'original.mp4'

Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');

Rename-Item -Path 'original.mp4' $Name
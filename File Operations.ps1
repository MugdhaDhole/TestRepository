#Write-Host "Hello Powershell ISE"
##Copy-Item C:\Demo -Destination C:\Demo
#New-Item -Path C:\TestFolder -ItemType Directory
#Copy-Item C:\Demo -Destination C:\TestFolder
#New-Item -Path C:\TestFolder\TextFile.txt -ItemType File
#Remove-Item -Path C:\TestFolder\Demo
#Copy-Item -Path C:\Demo -Destination .\TestFolder -Recurse
#Set-Location C:\TestFolder\Demo
#dir
#cd f:\
#New-Item -Path F:\Powershell\Java -ItemType Directory
#Copy-Item -Path '.\Java\Assignments and test' -Destination F:\Powershell\Java -Recurse
#Get-Location
#Set-Location 'F:\Powershell\Java\Assignments and test'
#dir

$Tdatelimit=(Get-Date).AddDays(-3)
Write-Host $Tdatelimit
#$files=Get-ChildItem -Path 'F:\Powershell\Java\Assignments and test'
#Write-Host $files

#New-Item .\newfolder -ItemType Directory
#cd file
#echo hello powershell > file.txt
#notepad file.txt

#Get-ExecutionPolicy -Scope CurrentUser
#Set-ExecutionPolicy -Scope "CurrentUser" -ExecutionPolicy "Unrestricted"


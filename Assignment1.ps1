#Write a script to move all files in a folder older than 3 days and move them to a backup folder on D drive and zip it up after moving

#Copy-Item -Path F:\Powershell\Java -Destination F:\Powershell\PreviousFiles -Recurse

#Get-ChildItem C:\Java
#$Files = Get-ChildItem -path D:\Java
#foreach($f in $Files)
#{
#
#    if($f.LastWriteTime -lt (Get-Date).AddDays(-3).Date)
#    {
#        
#        Write-Host $f.LastWriteTime
#       
#            Move-Item $f.FullName -Destination F:\BackUp -Force 
#    }
#}
#Compress-Archive F:\BackUp -DestinationPath F:\BackUp

$Files = Get-ChildItem -path F:\DemoFiles -Recurse | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-3)} | Move-Item -Destination D:\BackUp -Force
$filenameFormat = "D:\BackUp"+[DateTime]::Now.ToString("dd-MM-yyyy")
Compress-Archive D:\BackUp -DestinationPath $filenameFormat

#Get-ChildItem -path F:\BackUp -Recurse | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-3).Date}

#$date= [DateTime]::Now.ToString("dd-MM-yyyy")

#Write-Host $date
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument 'F:\Powershell\Assignment1.ps1'
$trigger = New-ScheduledTaskTrigger -Daily -At 4:00pm
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "AssignmentRun" -Description "Daily Run At 4.PM"
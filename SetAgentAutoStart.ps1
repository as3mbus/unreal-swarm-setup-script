$WshShell = New-Object -comObject WScript.Shell;
$Shortcut = $WshShell.CreateShortcut("$env:userprofile\Start Menu\Programs\Startup\UnrealSwarmAgent.lnk");
$Shortcut.TargetPath = "$PSScriptRoot\SwarmAgent.exe";
$Shortcut.Save();

Write-Host "Startup Shortcut created in : $env:userprofile\Start Menu\Programs\Startup\UnrealSwarmAgent.lnk"
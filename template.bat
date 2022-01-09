:: This file combines a valid cmd.exe batch file with a powershell script. This
:: is a self-contained & portable way to execute a powershell script by double
:: clicking it in the windows shell. This works independently from powershell's
:: execution policy which defaults to RESTRICED (deny any script file
:: execution). See also about_Execution_Policies and Set-ExecutionPolicy.

@ECHO OFF
powershell.exe -NoProfile -Command "& { $skip = $true; $script = Get-Content '%~f0' | ?{ If ($skip) { $skip = $_ -ne ':POWERSHELL'} Else { return $true} } | Out-String; [ScriptBlock]::Create(\"`$PSScriptRoot='%~dp0'`n$script\").Invoke() }"
EXIT /B 0
:POWERSHELL
# Preserve lines above. Only Comments (lines starting with ::) may be stripped!
# Powershell code goes below.

write-host "Hello World!"

# psbat
This projects provides a template for wrapping powershell code within an cmd.exe batch file (*.bat). This is a self-contained & portable way to execute a powershell script by double clicking it in the windows shell. This works independently from powershell's execution policy which defaults to RESTRICED (deny any script file execution). See also about_Execution_Policies and Set-ExecutionPolicy.

## Howto
Copy [template.bat](template.bat), then add your powershell code. Lines from `@ECHO OFF` to `:POWERSHELL` (inclusive) must be preserved. Custom powershell code goes below `:POWERSHELL`. Comments at the beginning of the file (lines starting with `::`) may be removed.
